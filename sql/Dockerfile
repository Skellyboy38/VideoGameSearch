FROM mysql

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_USER user
ENV MYSQL_PASSWORD password

COPY tables.sql /docker-entrypoint-initdb.d/tables.sql

RUN /entrypoint.sh mysqld & sleep 30 && killall mysqld