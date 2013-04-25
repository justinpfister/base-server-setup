sudo /etc/init.d/php5-fpm restart

git clone git@github.com:justinpfister/openyard6-symfony.git /var/www/development-openyard6

cd /var/www/development-openyard6

php bin/vendors install

sudo setfacl -R -m u:www-data:rwx -m u:justin:rwx app/cache app/logs app/Resources/java prodimgs vendor

sudo setfacl -dR -m u:www-data:rwx -m u:justin:rwx app/cache app/logs app/Resources/java prodimgs vendor

cd ~/base-server-setup

sudo chown -R www-data:webdev /var/www
sudo chmod -R ug=rx,o= /var/www

