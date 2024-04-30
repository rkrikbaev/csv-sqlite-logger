-- Create schema messenger
CREATE SCHEMA IF NOT EXISTS messenger;
-- Set authorization for the schema
ALTER SCHEMA messenger OWNER TO postgres;

-- Create schema logger
CREATE SCHEMA IF NOT EXISTS logger;
-- Set authorization for the schema
ALTER SCHEMA logger OWNER TO postgres;

-- Add missing import statement for SERIAL data type
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";