include .env
export $(shell sed 's/=.*//' .env)

MYSQL_CMD=mysql -u $(MYSQL_USER) -p$(MYSQL_PASSWORD)
MYSQL_DB=$(MYSQL_CMD) $(MYSQL_DATABASE)

setup-db:
	$(MYSQL_CMD) -e "DROP DATABASE IF EXISTS $(MYSQL_DATABASE); CREATE DATABASE $(MYSQL_DATABASE);"
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
