#!/bin/sh

sleep 10

if [ -f ./wp-config.php ]
then
	echo "wordpress already downloaded"
else

	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	rm -rf /var/www/html/wp-admin /var/www/html/wp-content /var/www/html/wp-includes
	mv wordpress/* .
	rm -rf latest.tar.gz
	rm -rf wordpress

	sed -i "s/username_here/${MYSQL_USER}/g" wp-config-sample.php
	sed -i "s/password_here/${MYSQL_PSW}/g" wp-config-sample.php
	sed -i "s/database_host/${MYSQL_DB_HOST}/g" wp-config-sample.php
	sed -i "s/database_name_here/${MYSQL_DB}/g" wp-config-sample.php
	cp wp-config-sample.php wp-config.php
fi

exec "$@"