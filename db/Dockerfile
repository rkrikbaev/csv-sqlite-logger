FROM postgres:latest

ENV POSTGRES_DB=db

ADD schema.sql /docker-entrypoint-initdb.d/

EXPOSE 5432