#!/bin/sh


#############################
## Install PHP-FPM
###########################

sudo apt-get -y install php5-cli php5-common php5-suhosin

sudo apt-get -y install php5-fpm php5-cgi

sudo apt-get -y install memcached php5-memcache php5-memcached php-apc php5-mysql php5-curl php5-gd php5-sqlite php5-intl


#################################
## Install Node.js
##################################

sudo apt-get install -y g++ curl libssl-dev apache2-utils git-core && git clone git://github.com/joyent/node.git && cd node && ./configure && make && sudo make install
