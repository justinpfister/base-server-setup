#!/bin/sh

sudo mkdir /var/www

#-------------------------------------------------
# Add Default privleges to the web area.

sudo chown -R www-data:webdev /var/www

sudo chmod -R ug=wrx,o= /var/www
#-------------------------------------------------



#---------------------------------
# Install many of the required dependencies -- a lot of apt-gets.
sudo sh server-setup.sh
#------------------------------------------------------------------------

#------------------------------------------------------
# Install a custom build of NGINX with support for things like perl_modules
sudo sh nginx-setup.sh
#--------------------------------------------

#----------------------------------------------
# Install PHP / Memcached / APC / Php5-Mysql & More!!!!
sudo sh webapp-setup.sh
#-------------------------------------------------

#-------------------------------------------------
# Create the /etc/init.d/[start|stop|restart] script.
# This functionality doesn't get created by default when you install from source.
sudo sh init-scripts/setup-nginx.sh
#-------------------------------------------------

#-------------------------------------------------
# Create the main web 'sites-available' directory
sudo mkdir /usr/local/nginx/conf/sites-available
#-------------------------------------------------

#-------------------------------------------------
# Create the main web 'sites-enabled' directory
sudo mkdir /usr/local/nginx/conf/sites-enabled
#-------------------------------------------------


#-------------------------------------------------
# Add Default web resources for testing :
sudo cp resources/html/index.php /usr/local/nginx/html/index.php

sudo cp resources/html/watts.jpg /usr/local/nginx/html/watts.jpg
#-------------------------------------------------

#-------------------------------------------------
# Add web configs for test dir into 'sites-available'
sudo touch /usr/local/nginx/conf/sites-available/default

sudo /bin/cp -Rf configs/server_test /usr/local/nginx/conf/sites-available/default
#-------------------------------------------------

#-------------------------------------------------
# Add Default privleges to the test files.

sudo chown -R www-data:webdev /usr/local/nginx/html

sudo chmod -R ug=wrx,o= /usr/local/nginx/html
#-------------------------------------------------


#-------------------------------------------------
# Add the default base nginx config and fastcgi_params

sudo /bin/cp -Rf configs/nginx.conf /usr/local/nginx/conf/nginx.conf

sudo /bin/cp -Rf configs/fastcgi_params /usr/local/nginx/conf/fastcgi_params
#---------------------------------------------------


#-------------------------------------
# Add GeoIP database files

sudo mkdir /usr/local/nginx/geoip

sudo wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz

sudo gunzip GeoIP.dat.gz

sudo wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz

sudo gunzip GeoLiteCity.dat.gz
#-----------------------------------------



#### Add PERL FILES ####
sudo cp perl/resize.pm /etc/perl/resize.pm


# Files mods shared with the update scripts.
# sudo sh file-mods.sh



