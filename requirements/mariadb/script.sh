#!/bin/sh

#démarrer MySQL
service mysql start;

#créer une table si elle n’existe pas déjà, du nom de la variable d’environnement SQL_DATABASE, indiqué dans mon fichier .env
mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DB}\`;"

#crée l’utilisateur SQL_USER s’il n’existe pas, avec le mot de passe SQL_PASSWORD , toujours à indiquer dans le .env
mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PSW}';"
#droits à l’utilisateur SQL_USER avec le mot de passe SQL_PASSWORD pour la table SQL_DATABASE
mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DB}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PSW}';"
#echange les droits root par localhost, avec le mot de passe root SQL_ROOT_PASSWORD
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PSW}';"
#rafraichir
mysql -e "FLUSH PRIVILEGES;"
#redémarrer MySQL
mysqladmin -u root -p${MYSQL_ROOT_PSW} shutdown
#commande que MySQL recommande sans arrêt à son démarrage.
exec mysqld_safe