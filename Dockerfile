FROM ubuntu:20.04

RUN apt-get -y update

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y php7.4 && apt-get install -y php7.4-mysqli
RUN apt-get install -y mariadb-server && apt-get install -y mariadb-client

COPY start.sh /opt/start.sh
COPY database.sql /opt/database.sql

RUN ["chmod", "+x", "/opt/start.sh"]

EXPOSE 80
EXPOSE 3306