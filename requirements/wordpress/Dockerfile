FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget

RUN apt-get install -y php7.3 \
    php-fpm \
    php-mysql \
    mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN mkdir -p /run/php && chown www-data:www-data /run/php

RUN	chown -R root:root /var/www/wordpress

COPY ./www.conf /etc/php/7.3/fpm/pool.d/

# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp

# COPY auto_config.sh /usr/local/bin/auto_config.sh

# RUN chmod +x /usr/local/bin/auto_config.sh

# ENTRYPOINT ["/usr/local/bin/auto_config.sh"]

CMD ["php-fpm7.3", "-F"]