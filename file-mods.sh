#!/bin/sh

sudo /bin/cp -Rf configs/nginx.conf /usr/local/nginx/conf/nginx.conf

sudo cp resources/html/index.php /usr/local/nginx/html/index.php

sudo cp resources/html/watts.jpg /usr/local/nginx/html/watts.jpg

sudo cp perl/resize.pm /etc/perl/resize.pm