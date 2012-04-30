This repo is designed to be the jumping point to initializing and setting up the various server environments.

##Usig the Following Files :

### git ###

> ``Git Clone`` ``git::location`` ``director`` will get you going with git!

###  run-webserver-setup.sh :

>   Designed to setup applications and run apt-get etc. This should only be run once.

### run-webserver-update.sh :

``sh run-webserver-update.sh``

>   Designed run the file-modification portions of the webserver-setup script.
>   EXAMPLE USE : Make changes to the github version of nginx.conf THEN run the 'run-webserver-update.sh'

### run-dbserver-setup.sh :

``sh run-dbserver-setup.sh``

>   Designed to setup the database and other storage applications. The primary objective of the server is to run MySQL et al. However, it also includes Nginx and PHP for running phpmysql admin and simular programs.


-------------------

### Initial Server Setup

1. git clone git@github.com:justinpfister/base-server-setup.git

2. cd base-server-setup

3. sudo sh run-webserver.sh

## Updating the Server Setup Repository

- cd ~/base-server-setup
- git pull

# DB Setup Notes
- create conf.inc.php from sample and modify the blowfish secret

`` cp /var/www/phpmyadmin/config.sample.inc.php /var/www/phpmyadmin/config.inc.php``

`` sudo nano /var/www/phpmyadmin/config.inc.php``

- $cfg['blowfish_secret'] = 'mydemopass'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

``mysql --user=<un> --password=<pw> < /var/www/phpmyadmin/scripts/create_tables.sql``

- un-comment Storage database and tables -- relating to 'PMADB'

- Comment out : bind-address : 127.0.0.1 --- /etc/mysql$ sudo nano my.cnf