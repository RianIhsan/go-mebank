createdb:
	sudo docker-compose up -d
dropdb:
	sudo docker exec -it postgres_db dropdb mebank
migrateup:
	migrate -path db/migrations -database "postgresql://root:root@localhost:5435/mebank?sslmode=disable" -verbose up
migratedown:
	migrate -path db/migrations -database "postgresql://root:root@localhost:5435/mebank?sslmode=disable" -verbose down
make sqlc:
	sqlc generate