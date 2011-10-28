#!/bin/sh

sudo /bin/cp -Rf /base-server-setup/init-scripts/nano.sh /etc/init.d/nano

sudo chmod +x /etc/init.d/nginx

sudo /usr/sbin/update-rc.d -f nginx defaults

sudo /etc/init.d/nginx restart