#!/bin/sh

sudo sh server-setup.sh

sudo sh nginx-setup.sh

sudo sh webapp-setup.sh

sudo sh init-scripts/setup-nginx.sh

sudo sh mysql-setup.sh

sudo apt-get -y install phpmyadmin

#sudo sh file-mods.sh