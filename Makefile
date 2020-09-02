.PHONY: start create_db backup_db restore_db stop

start:
	mkdir data/postgres
	docker-compose up -d

create_db:
	docker exec -it postgres psql -U postgres -c "CREATE DATABASE ${DB};"

backup_db:
	docker exec -it postgres pg_dump -U postgres ${DB} > ${DB}.sql

restore_db:
	cat ${dump_file} | docker exec -i postgres psql -U postgres -d ${DB}

stop:
	docker-compose down
