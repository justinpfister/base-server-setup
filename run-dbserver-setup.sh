#!/bin/sh

sudo apt-get update

sudo apt-get upgrade

sudo apt-get -y install nginx php5-fpm

sudo apt-get -y install php5-cli php5-common php5-suhosin

sudo apt-get -y install php5-fpm php5-cgi php5-mysql

sudo apt-get -y install memcached php5-memcache php-apc php5-mcrypt

sudo apt-get -y install mysql-server

sudo mkdir /var/www

cd /var/www

sudo wget -O phpmyadmin.tar.gz http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/3.4.7/phpMyAdmin-3.4.7-english.tar.gz?r=http%3A%2F%2Fwww.phpmyadmin.net%2Fhome_page%2Fdownloads.php&ts=1319834301&use_mirror=surfnet

sudo tar -zxvf phpmyadmin.tar.gz

sudo /bin/cp -Rf configs/db_nginx.conf /etc/nginx/nginx.conf

sudo /bin/cp -Rf configs/db_server /etc/nginx/sites-enabled/default

sudo chown -R www-data:webdev /var/www

sudo chmod -R ug=wrx,o= /var/www

