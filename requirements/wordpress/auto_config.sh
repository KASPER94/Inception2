#!/bin/sh

sleep 10

# adduser --disabled-password --gecos "" www-data

if [ -f /var/www/html/wp-config.php ]; then
	echo "wordpress already downloaded"
else
	if [ $(pwd) != "/var/www/html" ]; then
		if [ ! -d /var/www/html ]; then
			mkdir /var/www/html
		fi
		chown -R www-data:www-data /var/www/html
		cd /var/www/html
	fi
	echo "Downloading wordpress"
	curl https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -o wp.tar.gz
	tar xfz wp.tar.gz
	# rm -rf /var/www/html/wp-admin /var/www/html/wp-content /var/www/html/wp-includes
	mv wordpress/* .
	rm -rf wp.tar.gz
	rm -rf wordpress
	sleep 5

	wp-cli config create --allow-root --dbname=$MYSQL_DB --dbuser=$MYSQL_USER \
		--dbpass=$MYSQL_PSW --dbhost=mariadb:3306
	wp-cli core install --allow-root --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN \
		--admin_password=$WP_ADMIN_PSW --admin_email=$WP_ADMIN_EMAIL
	wp-cli user create --allow-root $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PSW
	# echo $MYSQL_USER
	# sed -i "s/username_here/${MYSQL_USER}/g" wp-config-sample.php
	# sed -i "s/password_here/${MYSQL_PSW}/g" wp-config-sample.php
	# sed -i "s/database_host/${MYSQL_DB_HOST}/g" wp-config-sample.php
	# sed -i "s/database_name_here/${MYSQL_DB}/g" wp-config-sample.php
	# cp wp-config-sample.php wp-config.php
fi

exec "$@"
# /usr/sbin/php-fpm81 -F