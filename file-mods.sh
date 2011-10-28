#!/bin/sh

sudo cp resources/html/index.php /usr/local/nginx/html/index.php

sudo cp resources/html/watts.jpg /usr/local/nginx/html/watts.jpg

sudo cp perl/resize.pm /etc/perl/resize.pm

sudo chown -R www-data:webdev /usr/local/nginx/html

sudo chmod -R ug=wrx,o= /usr/local/nginx/html