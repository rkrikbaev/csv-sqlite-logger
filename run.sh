#!/bin/bash

#apt-get update
#apt-get install libpcsclite-dev
apt-get install gcc
apt-get install libltdl7
#apt-get install build-essential
#apt-get install glibc-devel
#apt install golang-go

rm -rf ~/.cache/go-build

## here in /app
cd /app

rm go.mod
rm go.sum

go mod init test.go
go mod tidy

go get 	github.com/joho/godotenv v1.5.1
go get 	github.com/mattn/go-sqlite3 v1.14.22
go get github.com/google/uuid

go build app.go


