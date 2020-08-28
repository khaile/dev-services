.PHONY: start create_db stop

start:
	docker-compose up -d

create_db:
	docker exec -it postgres psql -U postgres -c "CREATE DATABASE ${DB};"

stop:
	docker-compose down
