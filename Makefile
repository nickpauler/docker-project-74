.PHONY: setup test dev ci down

setup:
	docker-compose run --rm app make setup

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker-compose up

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

down:
	docker-compose -f docker-compose.yml down -v