#!/bin/sh

sleep 10

WP_DIR="/chemin/vers/votre/wordpress"

# Vérifier si wp-config.php existe
if [ ! -f "$WP_DIR/wp-config.php" ]; then
    echo "wp-config.php n'existe pas. Création du fichier de configuration..."
    wp config create	--allow-root \
                        --dbname=$SQL_DATABASE \
                        --dbuser=$SQL_USER \
                        --dbpass=$MYSQL_PSW \
                        --dbhost=mariadb:3306 --path='/var/www/wordpress'
else
    echo "wp-config.php existe déjà."
fi

