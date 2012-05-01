sudo /etc/init.d/php5-fpm restart

git clone git@github.com:justinpfister/openyard6-symfony.git /var/www/development-openyard6

cd /var/www/development-openyard6

sudo cp configs/devparameters.ini /var/www/development-openyard6/app/config/

php bin/vendors install

cd ~/base-server-setup

