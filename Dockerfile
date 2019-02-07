FROM datasetteproject/datasette
RUN apt update && apt install -y wget bzip2
RUN wget -q https://millsfield.sfomuseum.org/distributions/sqlite/sfomuseum-data-architecture-latest.db.bz2
RUN bunzip2 sfomuseum-data-architecture-latest.db.bz2
RUN datasette inspect --inspect-file=inspect.json sfomuseum-data-architecture-latest.db
EXPOSE 8001
CMD ["datasette", "-h", "0.0.0.0", "--inspect-file", "inspect.json", "-p", "8001", "sfomuseum-data-architecture-latest.db", "--cors"]