package main

import (
	"database/sql"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"
	"path/filepath"
	"strings"
	"time"

	"github.com/joho/godotenv"
	_ "github.com/lib/pq"

	"filelogger"
	"utils"
	"postgresdb"
)

type Event struct {
	Id int
	Document string
	EventDate string
	CreatedAt string
	MessageSent string
	State string
}

const (
	StateTable = "RESPONSE"
	XMLDocumentTable = "DOCUMENTS"
	EventTimeFormat = "2006-01-02T15:04:05.000-07:00"
	ip = "195.12.113.29"
	port = "80"
	ReportTable = "REPORT"
	)

var (
	EventTime string
	EventRecordDate time.Time
	FilesDirPath string

	db     *sql.DB
	Events Event
	cwd = ""
	csv_path = ""
	tables = []string{}
)

func main() {
	
	var err error
	fmt.Println("Start")

	env := path.Join(cwd, "./.env")

	err = godotenv.Load(env)
	if err != nil {
		fmt.Println("error parse env file: ", env)
	}
	cwd, _ = os.Getwd()

	csv_path = os.Getenv("csv_path")
	fmt.Println(csv_path)

	tablesString := os.Getenv("tables")
	tables = strings.Split(tablesString, ",")
	fmt.Println(tables)

	dsn := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable",
		os.Getenv("DB_HOST"), os.Getenv("DB_PORT"), os.Getenv("DB_USER"), os.Getenv("DB_PASSWORD"), os.Getenv("DB_NAME"))
	db, err = sql.Open("postgres", dsn)

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
			fmt.Println("Error when log Data:", err)
		}

		time.Sleep(600 * time.Second)
		
		}
	}

func Log() error {

	files, err := ioutil.ReadDir(csv_path)
	if err != nil {
		return err
	}

    for _, file := range files {
        fileName := file.Name()

        if !file.IsDir() && strings.HasSuffix(fileName, ".csv") {
            eventid, isValid := utils.GetValidPrefix(fileName, tables)
            if isValid {
                pathFile := filepath.Join(csv_path, fileName)

				//parse file to list
				columns, values, err := filelogger.ParseAndPrepareData(pathFile)
				if err != nil {
					fmt.Println("Error when parse file: ", fileName)
				}

				//insert data to db
				err = postgresdb.Insert(db, "logger", eventid, columns, values, "")
				if err != nil {
					continue
				}

				pathTo := fmt.Sprintf("%s/saved/%s",csv_path,fileName)

				fmt.Println(pathTo)
				utils.MoveFile(pathFile, pathTo)
			}
		}
	}
	return err
}








// // InsertData inserts data into the specified table in the SQLite database.
// func InsertDataIntoDB(table string, EventParams []string, values []string, state string) error {
	
// 	columns := EventParams

// 	columns = append(columns, "createdAtDate")
// 	values = append(values, time.Now().Format(EventTimeFormat))
	
// 	if table == "DOCUMENTS" {
// 		columns = append(columns, "state")
// 		values = append(values, state)
// 	}

// 	// Construct the SQL query for insertion
// 	valuePlaceholders := strings.Repeat("$1, ", len(columns)-1) + "$" + strconv.Itoa(len(columns)) // Repeat the "$" for placeholders
// 	EventParamsString := strings.Join(columns, ",")
	
// 	query := fmt.Sprintf("INSERT INTO %s (%s) VALUES (%s) ON CONFLICT DO NOTHING", table, EventParamsString, valuePlaceholders)
	
// 	fmt.Println(query)
// 	fmt.Println(values)
	
// 	err := putData(db, query, values)
	
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return nil
// }

// // InsertData inserts data into the specified table in the SQLite database.
// func putData(db *sql.DB, query string, values []string) error {

// 	data := make([]interface{}, len(values))

// 	for i, v := range values {
// 		data[i] = v
// 	}

// 	tx, err := db.Begin() // Start a transaction

// 	if err != nil {
//         return fmt.Errorf("error beginning transaction: %w", err)
//     }
    
//     defer tx.Rollback() // Rollback the transaction in case of errors
    
//     _, err = tx.Exec(query, data...)
//     if err != nil {
//         return fmt.Errorf("error executing query: %w", err)
//     }
    
//     if err := tx.Commit(); err != nil {
//         return fmt.Errorf("error committing transaction: %w", err)
//     }
// 	return nil
// }