#!/bin/sh

#####
## INSTALL NGINX
#########

sudo add-apt-repository ppa:nginx/development

sudo apt-get -y update

sudo apt-get -y upgrade

mkdir ~/sources

cd ~/sources/

sudo wget http://nginx.org/download/nginx-1.2.0.tar.gz
sudo wget -O nginx-upstream-fair.tar.gz https://github.com/justinpfister/nginx-upstream-fair/tarball/master
sudo wget -O nginx-echo.tar.gz https://github.com/justinpfister/echo-nginx-module/tarball/master

sudo tar -zxvf nginx-upstream-fair.tar.gz

sudo tar -zxvf nginx-echo.tar.gz

sudo tar -zxvf nginx-1.2.0.tar.gz

cd nginx-1.2.0/


sudo ./configure \
--sbin-path=/usr/local/sbin \
--conf-path=/home/justin/base-server-setup/configs/nginx.conf \
--with-debug \
--with-http_addition_module \
--with-http_dav_module \
--with-http_geoip_module \
--with-http_gzip_static_module \
--with-http_image_filter_module \
--with-http_realip_module \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-http_sub_module \
--with-http_xslt_module \
--with-ipv6 \
--with-sha1=/usr/include/openssl \
--with-md5=/usr/include/openssl \
--with-mail \
--with-mail_ssl_module \
--with-http_perl_module \
--add-module=/home/justin/sources/justinpfister-nginx-upstream-fair-2131c73 \
--add-module=/home/justin/sources/justinpfister-echo-nginx-module-f930c02

sudo make

## sudo kill `cat /usr/local/nginx/logs/nginx.pid`

sudo make install

# sudo /usr/local/sbin/nginx


#####
## NGINX INSTALLED - Complete
#############   ####