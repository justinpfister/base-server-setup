#!/bin/sh

########################
## Install MySQL
###########################

sudo debconf-set-selections <<< 'tempsqlpw'
sudo debconf-set-selections <<< 'tempsqlpw'
sudo apt-get -y install mysql-server