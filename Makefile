.PHONY: build run stop clean logs

build:
	docker build -t hill_climbing .

run:
	docker run -d \
    -p 8888:8888 \
    -v "$(PWD)":/home/jovyan/work \
    --env-file .env \
    --name hill_climbing_container \
    hill_climbing

stop:
	@docker stop hill_climbing_container || true
	@docker rm hill_climbing_container || true

clean: stop
	@docker rmi hill_climbing || true

logs:
	docker logs -f hill_climbing_container
