### pg_dump
pg_dump -h 127.0.0.1 -p 7432 -U postgres -d postgres -f test.sql

### psql

psql -h localhost -p 5432 -U postgres -d postgres -f test.sql