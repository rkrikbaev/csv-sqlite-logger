module main

go 1.22.1

require (
	github.com/joho/godotenv v1.5.1
	github.com/mattn/go-sqlite3 v1.14.22
	filelogger v0.0.0
	httplogger v0.0.0
	utils v0.0.0	
)

replace filelogger => ./routes/filelogger
replace httplogger => ./routes/httplogger
replace utils => ./routes/utils