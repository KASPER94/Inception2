FROM debian:buster

RUN apt update && apt upgrade -y && \
    apt install -y nginx curl vim openssl

# RUN apt install -y php7.3 \
#     php7.3-fpm \
#     php-mysql

# COPY www.conf /etc/php/8.2/fpm/pool.d/
# COPY www.conf /usr/local/etc/php-fpm.d/

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj \
	"/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=skapersk.42.fr/UID=skapersk"

COPY ./nginx.conf /etc/nginx/nginx.conf
# COPY ./www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir -p /var/run/nginx

# RUN chmod 755 /var/www/html

# RUN chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

