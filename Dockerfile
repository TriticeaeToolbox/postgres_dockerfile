FROM postgres:12.3

ENV POSTGRES_PASSWORD=postgres
ADD init/run.sh /docker-entrypoint-initdb.d
ADD init/t3.sh /docker-entrypoint-initdb.d
ADD sql /docker-entrypoint-initdb.d/

