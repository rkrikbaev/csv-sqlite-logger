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