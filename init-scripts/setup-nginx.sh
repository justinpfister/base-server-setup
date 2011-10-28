#!/bin/sh

# Set nginx base config files
sudo ../file-mods/nginx-configs.sh

sudo touch /etc/init.d/nginx

sudo /bin/cp -Rf init-scripts/nginx.sh /etc/init.d/nginx

sudo chmod +x /etc/init.d/nginx

sudo /usr/sbin/update-rc.d -f nginx defaults

#### PERL FILES ####
sudo cp perl/resize.pm /etc/perl/resize.pm

sudo /etc/init.d/nginx restart

sudo /etc/init.d/php5-fpm restart