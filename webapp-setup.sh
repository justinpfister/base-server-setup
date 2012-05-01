#!/bin/sh


#############################
## Install PHP-FPM
###########################

sudo apt-get -y install php5-cli php5-common php5-suhosin

sudo apt-get -y install php5-fpm php5-cgi

sudo apt-get -y install memcached php5-memcache php5-memcached php-apc php5-mysql php5-curl php5-gd php5-sqlite php5-intl


######################
## Install Node .. Install Less
#######################

sudo apt-get -y install python-software-properties

sudo add-apt-repository ppa:chris-lea/node.js

sudo apt-get update

sudo apt-get -y install nodejs npm

sudo mv configs/.npmrc ~/

sudo npm install less
