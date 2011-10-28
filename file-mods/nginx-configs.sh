#!/bin/sh

sudo /bin/cp -Rf configs/nginx.conf /usr/local/nginx/conf/nginx.conf

sudo /bin/cp -Rf configs/fastcgi_params /usr/local/nginx/conf/fastcgi_params

sudo /bin/cp -Rf configs/server_test /usr/local/nginx/conf/sites-enabled/default