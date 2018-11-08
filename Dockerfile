FROM postgres:latest
RUN apt update && apt install -y postgresql-11-postgis-2.5 && apt clean
COPY create_extensions.sh /docker-entrypoint-initdb.d/create_extensions.sh
