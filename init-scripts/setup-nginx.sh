#!/bin/sh

sudo touch /etc/init.d/nginx

sudo /bin/cp -Rf init-scripts/nginx.sh /etc/init.d/nginx

sudo chmod +x /etc/init.d/nginx

sudo /usr/sbin/update-rc.d -f nginx defaults

sudo /etc/init.d/nginx restart