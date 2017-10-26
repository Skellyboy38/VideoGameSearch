FROM mysql

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_USER user
ENV MYSQL_PASSWORD password

COPY setup.sql /docker-entrypoint-initdb.d/setup.sql

RUN /entrypoint.sh mysqld & sleep 30 && killall mysqld