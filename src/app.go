package main

//СИКН Амангельды    407001
//СИКН Айракты   407002
//СИКН Жаркум   407003
//
//Резервуар Амангельды - 1   407004
//Резервуар Амангельды - 2   407005
//
//Резервуар Айракты - 1   407006
//Резервуар Айракты - 2   407007
//
//Резервуар Жаркум - 1   407008
//Резервуар Жаркум - 2   407009

import (
	"io/ioutil"
	"database/sql"
	"log"
	"path/filepath"
	"fmt"
	"os"
	"path"
	"strings"
	"time"

	"github.com/joho/godotenv"
	_ "github.com/mattn/go-sqlite3"

	"filelogger"
	"utils"
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
	logOver = "file"
)

func main() {
	
	var err error
	fmt.Println("Start")

	env := path.Join(cwd, "./bin/app.env")
	err = godotenv.Load(env)
	if err != nil {
		fmt.Println("error parse env file: ", env)
	}
	cwd, _ = os.Getwd()

	dbPath := os.Getenv("db_path")

	fmt.Println(dbPath)
	db, err = sql.Open("sqlite3", dbPath)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	logOver = os.Getenv("logOver")

	if err != nil {
		fmt.Println("Ошибка загрузки часового пояса:", err)
		return
	}
	run()
}

func run() {
	var err error
	for {
		if logOver == "file" {
			fmt.Println("LogFiles")
			err = LogFiles()
			if err != nil {
				fmt.Println("Error when log Data:", err)
			}
		}
	
		time.Sleep(600 * time.Second)
	}
}

func LogFiles() error {
    path := path.Join(cwd, "/csv_data/")
		validPrefixes := []string{"407001","407002","407003", "407004","407005","407006","407007","407008","407009"}

		files, err := ioutil.ReadDir(path)
		if err != nil {
			return err
		}

    for _, file := range files {
        fileName := file.Name()

        if !file.IsDir() && strings.HasSuffix(fileName, ".csv") {
            eventid, isValid := utils.GetValidPrefix(fileName, validPrefixes)
            if isValid {
                pathFile := filepath.Join(path, fileName)

				//parse file to list
				columns, values, err := filelogger.ParseAndPrepareData(pathFile)
				if err != nil {
					fmt.Println("Error when parse file: ", fileName)
				}
				fmt.Println(eventid)
				fmt.Println(columns)
				fmt.Println(values)
				err = InsertDataIntoDB(eventid, columns, values, "")
				if err != nil {
					continue
				}
				pathTo := fmt.Sprintf("%s/saved/%s",path,fileName)
				fmt.Println(pathTo)
				utils.MoveFile(pathFile, pathTo)
			}
		}
	}
	return err
}

// InsertData inserts data into the specified table in the SQLite database.
func InsertDataIntoDB(table string, EventParams []string, values []string, state string) error {
	
	columns := EventParams

	columns = append(columns, "createdAtDate")
	values = append(values, time.Now().Format(EventTimeFormat))
	
	if table == "DOCUMENTS" {
		columns = append(columns, "state")
		values = append(values, state)
	}

	// Construct the SQL query for insertion
	valuePlaceholders := strings.Repeat("?, ", len(columns)-1) + "?" // Repeat the "?" for placeholders
	EventParamsString := strings.Join(columns, ",")
	
	query := fmt.Sprintf("INSERT OR IGNORE INTO '%s' (%s) VALUES (%s)", table, EventParamsString, valuePlaceholders)
	
	fmt.Println(query)
	fmt.Println(values)
	
	err := putData(db, query, values)
	
	if err != nil {
		log.Fatal(err)
	}
	return nil
}

// InsertData inserts data into the specified table in the SQLite database.
func putData(db *sql.DB, query string, values []string) error {

	data := make([]interface{}, len(values))

	for i, v := range values {
		data[i] = v
	}

	tx, err := db.Begin() // Start a transaction

	if err != nil {
        return fmt.Errorf("error beginning transaction: %w", err)
    }
    
    defer tx.Rollback() // Rollback the transaction in case of errors
    
    _, err = tx.Exec(query, data...)
    if err != nil {
        return fmt.Errorf("error executing query: %w", err)
    }
    
    if err := tx.Commit(); err != nil {
        return fmt.Errorf("error committing transaction: %w", err)
    }
	return nil
}