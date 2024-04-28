-- Create schema logger
CREATE SCHEMA IF NOT EXISTS logger;

-- Set authorization for the schema
ALTER SCHEMA logger OWNER TO postgres;

-- Add missing import statement for SERIAL data type
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE logger."407001" (
    "ID" SERIAL PRIMARY KEY,
    "temperature" REAL,
    "density" REAL,
    "volume" REAL,
    "massflowbegin" REAL,
    "massflowend" REAL,
    "mass" REAL,
    "datetime" TEXT NOT NULL UNIQUE,
    "collected" TEXT
);
CREATE TABLE logger."407002" (
    "ID" SERIAL PRIMARY KEY,
    "temperature" REAL,
    "density" REAL,
    "volume" REAL,
    "massflowbegin" REAL,
    "massflowend" REAL,
    "mass" REAL,
    "datetime" TEXT NOT NULL UNIQUE,
    "collected" TEXT
);
CREATE TABLE logger."407003" (
    "ID" SERIAL PRIMARY KEY,
    "temperature" REAL,
    "density" REAL,
    "volume" REAL,
    "massflowbegin" REAL,
    "massflowend" REAL,
    "mass" REAL,
    "datetime" TEXT NOT NULL UNIQUE,
    "collected" TEXT
);
CREATE TABLE logger."407004" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);
CREATE TABLE logger."407005" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);
CREATE TABLE logger."407006" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);
CREATE TABLE logger."407007" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);
CREATE TABLE logger."407008" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);
CREATE TABLE logger."407009" (
    "ID"	SERIAL PRIMARY KEY,
    "temperature"	REAL,
    "density"	REAL,
    "volume"	REAL,
    "tanklevel"	REAL,
    "mass"	REAL,
    "datetime"	TEXT UNIQUE,
    "collected"	TEXT
);

-- Create schema logger
CREATE SCHEMA IF NOT EXISTS messenger;

-- Set authorization for the schema
ALTER SCHEMA messenger OWNER TO postgres;

CREATE TABLE messenger."DOCUMENTS" (
	"ID"	SERIAL PRIMARY KEY,
	"document"	TEXT NOT NULL,
	"response"	TEXT,
	"datetime"	TEXT NOT NULL UNIQUE,
	"sent"	TEXT,
	"created"	TEXT,
	"state"	TEXT
);


/*
    FILEPATH: /Users/rustamkrikbayev/projects/csv_logger/helper.sql

    This SQL query selects the table names from the 'logger' schema in the information_schema.tables view.
    It retrieves the table_name column for all tables in the 'logger' schema.

    Example usage:
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = 'logger';
*/
-- SELECT table_name FROM information_schema.tables WHERE table_schema = 'logger';


