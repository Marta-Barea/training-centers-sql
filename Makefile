include .env
export $(shell sed 's/=.*//' .env)

MYSQL_CMD=mysql -u $(DB_USER) -p$(DB_PASS)
MYSQL_DB=$(MYSQL_CMD) $(DB_NAME)

setup-db:
	$(MYSQL_CMD) -e "DROP DATABASE IF EXISTS $(DB_NAME); CREATE DATABASE $(DB_NAME);"
	$(MYSQL_DB) < schema/create_tables.sql

insert-data:
	$(MYSQL_DB) < schema/insert_sample_data.sql

run-queries:
	mkdir -p results
	for file in queries/*.sql; do \
		query_name=$$(basename $$file .sql); \
		$(MYSQL_DB) < $$file | sed 's/\t/,/g' > results/$$query_name.csv; \
	done

all-insert: setup-db insert-data run-queries
