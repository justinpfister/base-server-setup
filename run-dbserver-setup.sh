#!/bin/sh

sudo apt-get update

sudo apt-get upgrade

sudo apt-get -y install nginx php5-fpm

sudo debconf-set-selections <<< 'tempsqlpw'
sudo debconf-set-selections <<< 'tempsqlpw'
sudo apt-get -y mysql-server
