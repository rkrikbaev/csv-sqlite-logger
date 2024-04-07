module main

go 1.20

require (
	filelogger v0.0.0
	github.com/joho/godotenv v1.5.1
	github.com/mattn/go-sqlite3 v1.14.22
	utils v0.0.0
)

require github.com/google/uuid v1.6.0 // indirect

replace filelogger => ./routes/filelogger

replace utils => ./routes/utils
