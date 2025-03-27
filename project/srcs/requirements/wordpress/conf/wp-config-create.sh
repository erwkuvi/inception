#!/bin/sh
if [ ! -f "/var/www/wp-config.php" ]; then
#wp core download --path=/var/www --allow-root
#wp config create \
#   --dbname=wordpress \
#   --dbuser=wpuser \
#   --dbpass=wppass \
#   --dbhost=mariadb \
#   --path=/var/www \
#   --allow-root
echo $DB_NAME
echo $DB_USER
echo $DB_PASS
wp config create \
   --dbname=$DB_NAME \
   --dbuser=$DB_USER \
   --dbpass=$DB_PASS \
   --dbhost=mariadb \
   --path=/var/www \
   --allow-root

wp core install \
   --url=https://ekuchel.42.fr \
   --title="My Awesome Inception" \
   --admin_user=ekuchel \
   --admin_password=ekuchel \
   --admin_email=ekuchel@author.com \
   --allow-root
#wp user create ekuchel ekuchel@student.42wolfsburg.de --role=administrator --user_pass=ekuchel --allow-root
wp user create inception_user inception@example.com --role=author --user_pass=inception --allow-root
wp theme install boardwalk --activate --allow-root
#wp theme install cubic --activate --allow-root
fi
exec "$@"
