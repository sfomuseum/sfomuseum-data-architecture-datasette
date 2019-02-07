docker:
	docker build -t sfomuseum-data-architecture .

run:
	docker run -it -p 8080:8001 sfomuseum-data-architecture
