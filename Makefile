build:
	docker build -t nginx  -f nginx/Dockerfile .
up:
	docker run --rm -p 8000:80 nginx