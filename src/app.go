package main

import (
	"database/sql"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	"github.com/joho/godotenv"
	_ "github.com/lib/pq"

	"filelogger"
	"os/exec"
	"postgresdb"
	"utils"
)

const (
	timeLayot = "2006-01-02T15:04:05.000-07:00"
)

var (
	db      *sql.DB
	DB_NAME = "postgres"
	cwd     = ""
	csvPath = "/csv_data"
	hour    = 0
)

func main() {

	var err error
	cwd, _ = os.Getwd()

	fmt.Println("Start")

	// load env file
	fmt.Println("Load env file")
	env := path.Join(cwd, "./.env")
	err = godotenv.Load(env)
	if err != nil {
		fmt.Println("error parse env file: ", env)
	}

	// read env variables
	csvPath = os.Getenv("CSV_PATH")
	hour, err = strconv.Atoi(os.Getenv("CONTRACT_HOUR"))
	if err != nil {
		log.Fatal(err)
	}

	DB_NAME = os.Getenv("DB_NAME")
	DB_USER := os.Getenv("DB_USER")
	DB_FILE_PATH := os.Getenv("DB_FILE_PATH")

	fmt.Println("CSV_PATH", csvPath)
	fmt.Println("CONTRACT_HOUR", hour)

	// connect to db
	dsn := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable",
		os.Getenv("DB_HOST"), os.Getenv("DB_PORT"), os.Getenv("DB_USER"), os.Getenv("DB_PASSWORD"), os.Getenv("DB_NAME"))
	fmt.Println("Error:", dsn)

	db, err = sql.Open("postgres", dsn)
	if err != nil {
		fmt.Println("error parse env file: ", env)
	}

	schemas, err := postgresdb.ListSchemas(db)
	if err != nil {
		fmt.Println("Error:", err)
	} else {
		fmt.Println("Schemas:", schemas)
	}

	if err != nil {
		// Check if the database exists
		dbExists := checkDatabaseExists(dsn, DB_NAME, DB_USER)

		// If the database doesn't exist, create it
		if !dbExists {
			fmt.Printf("Database %s does not exist, creating.\n", DB_NAME)
			createDatabase(DB_NAME, DB_USER)
			executeSQLFile(DB_NAME, DB_USER, DB_FILE_PATH)
		} else {
			fmt.Printf("Database %s already exists, skipping creation.\n", DB_NAME)
		}
	}

	if err != nil {
		log.Fatal(err)
	}

	defer db.Close()

	run()
}

func run() {

	var err error

	for {
		fmt.Println("LogFiles")

		err = Log()

		if err != nil {
			fmt.Println("Error log Data:", err)
		}

		time.Sleep(600 * time.Second)

	}
}

func Log() error {

	files, err := ioutil.ReadDir(csvPath)
	if err != nil {
		return err
	}

	for _, file := range files {
		fileName := file.Name()

		if !file.IsDir() && strings.HasSuffix(fileName, ".csv") {

			filePath := filepath.Join(csvPath, fileName)
			fmt.Println("Find file", filePath)
			//parse file to list
			table, dt, columns, values, err := filelogger.ParsePrepareData(filePath)
			values[0] = time.Date(dt.Year(), dt.Month(), dt.Day(), hour, 0, 0, 0, dt.Location()).Format(timeLayot)

			if err != nil {
				fmt.Println("Error when parse file: ", fileName)
			}

			//insert data to db
			fmt.Println("Insert data into DB")
			err = postgresdb.Insert(db, DB_NAME, "logger", table, columns, values, "")
			if err != nil {
				continue
			}

			savePath := fmt.Sprintf("%s/saved/%s", csvPath, fileName)

			utils.MoveFile(filePath, savePath)
		}
	}
	return err
}

func checkDatabaseExists(dsn, dbName, dbUser string) bool {
	db, err := sql.Open("postgres", dsn)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	var exists bool
	err = db.QueryRow("SELECT 1 FROM pg_database WHERE datname=$1", dbName).Scan(&exists)
	if err != nil && err != sql.ErrNoRows {
		log.Fatal(err)
	}

	return exists
}

func createDatabase(dbName, dbUser string) {
	cmd := exec.Command("createdb", "-U", dbUser, dbName)
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}
}

func executeSQLFile(dbName, dbUser, filePath string) {
	cmd := exec.Command("psql", "-U", dbUser, "-d", dbName, "-f", filePath)
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}
}
