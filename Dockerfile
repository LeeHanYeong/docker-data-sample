FROM        mysql:8.1
COPY        init.sql    /docker-entrypoint-initdb.d/init.sql
