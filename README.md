This repo is designed to be the jumping point to initializing and setting up the various server environments.

==============

##Files :

###  run-webserver-setup.sh :

>   Designed to setup applications and run apt-get etc. This should only be run once.

### run-webserver-update.sh :

>   Designed run the file-modification portions of the webserver-setup script.
>   EXAMPLE USE : Make changes to the github version of nginx.conf THEN run the 'run-webserver-update.sh'

### run-dbserver-setup.sh :

>   Designed to setup the database and other storage applications.

-------------------

### Initial Server Setup

1. git clone git@github.com:justinpfister/base-server-setup.git

2. cd base-server-setup

3. sudo sh run-webserver.sh

