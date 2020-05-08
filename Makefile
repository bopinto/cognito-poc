NAME=rewarded-gaming-backend
PORT=8080

build:
	docker build -t cognito-poc:latest .

remove:
	docker container rm --force rw

run:
	docker container run -p ${PORT}:80 --name rw cognito-poc:latest
