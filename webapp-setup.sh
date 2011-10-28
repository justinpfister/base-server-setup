#!/bin/sh


#############################
## Install PHP-FPM
###########################

sudo apt-get -y install php5-cli php5-common php5-suhosin

sudo apt-get -y install php5-fpm php5-cgi

sudo apt-get -y install memcached php5-memcache php-apc

########################
## Install MySQL
###########################

sudo debconf-set-selections <<< 'tempsqlpw'
sudo debconf-set-selections <<< 'tempsqlpw'
sudo apt-get -y install mysql-server
