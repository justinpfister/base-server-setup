#!/bin/sh


#############################
## Install PHP-FPM
###########################

# sudo add-apt-repository ppa:ondrej/php5

sudo apt-get -y install php5-cli php5-common

# Waiting on 5.4
# sudo apt-get -y install php5-suhosin

sudo apt-get -y install php5-fpm php5-cgi

sudo apt-get -y install memcached php-apc php5-mysql php5-curl php5-gd php5-sqlite php5-intl php-apc php-pear php5-xsl php5-dev libmemcached-dev

# Waiting on 5.4
# using PECL to install memcached.
sudo pecl install memcached
# sudo apt-get -y install php5-memcache php5-memcached

######################
## Install Node .. Install Less
#######################

sudo apt-get -y install python-software-properties

sudo add-apt-repository ppa:chris-lea/node.js

sudo apt-get update

sudo apt-get -y install nodejs npm

cd /usr/lib/nodejs/

sudo npm install less

cd ~/base-server-setup

##############################
## Install PHP Documentation  AKA phpdoc
#################################

sudo apt-get -y install graphviz

sudo pear channel-discover pear.phpdoc.org

sudo pear install phpdoc/phpDocumentor-alpha