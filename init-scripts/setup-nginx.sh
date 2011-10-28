#!/bin/sh

sudo /bin/cp -Rf configs/nginx.conf /usr/local/nginx/conf/nginx.conf

sudo /bin/cp -Rf configs/fastcgi_params /usr/local/nginx/conf/fastcgi_params

sudo touch /etc/init.d/nginx

sudo /bin/cp -Rf init-scripts/nginx.sh /etc/init.d/nginx

sudo chmod +x /etc/init.d/nginx

sudo /usr/sbin/update-rc.d -f nginx defaults

sudo /etc/init.d/nginx restart

sudo /etc/init.d/php5-fpm restart