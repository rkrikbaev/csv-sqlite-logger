module main

go 1.20

require (
	filelogger v0.0.0
	github.com/joho/godotenv v1.5.1
	"github.com/lib/pq" v1.10.9
	utils v0.0.0
)

require (
	github.com/google/uuid v1.6.0 // indirect
	github.com/lib/pq v1.10.9
	postgresdb v0.0.0-00010101000000-000000000000
)

replace filelogger => ./routes/filelogger

replace utils => ./routes/utils

replace postgresdb => ./routes/postgresdb
