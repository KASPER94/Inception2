FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget

RUN apt-get install -y php7.3 \
    php-fpm \
    php-mysql \
	curl \
	sendmail \
    mariadb-client

# RUN wget https://wordpress.org/latest.tar.gz -P /var/www

# RUN cd /var/www && tar xfz latest.tar.gz && rm -rf wordpress-6.0-fr_FR.tar.gz

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp-cli


COPY ./www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir /run/php

COPY auto_config.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/auto_config.sh

ENTRYPOINT ["/usr/local/bin/auto_config.sh"]

# WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]
