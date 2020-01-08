FROM postgres:12
RUN apt update && apt install -y postgresql-12-postgis-2.5 && apt clean
COPY create_extensions.sh /docker-entrypoint-initdb.d/create_extensions.sh
USER postgres
