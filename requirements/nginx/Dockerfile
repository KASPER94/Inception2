FROM debian:buster

RUN apt update && apt upgrade -y && \
    apt install -y nginx curl vim openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=skapersk.42.fr/UID=skapersk"

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

