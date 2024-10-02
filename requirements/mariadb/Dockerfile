FROM debian:buster

RUN apt update -y && apt upgrade -y && \
    apt install mariadb-server -y

COPY 50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 3306 

ENTRYPOINT ["/usr/local/bin/script.sh"]

CMD ["mysqld_safe"]