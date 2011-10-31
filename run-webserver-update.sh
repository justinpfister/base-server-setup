#!/bin/sh

cd ~/base-server-setup

git pull

#these are the most basic Nginx configuration files. It lays the foundation for adding other configuration files from other locations.

# Update the base nginx config files
sudo sh file-mods/nginx-configs.sh