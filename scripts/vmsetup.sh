#!/bin/bash

# udpate apt and base packages
sudo apt-get update -y

# install vim
sudo apt-get install vim -y

# install curl
sudo apt-get install curl -y

# install apache2
sudo apt-get install apache2 -y

# install php5
sudo apt-get install php5 -y

# this may not be requried, installing anyway
sudo apt-get install libapache2-mod-php5 -y

# install mysql
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y

# restart mysql and apache
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/mysql restart

# setup mysql
mysql -u root -proot < ~/scripts/sql/bkp_redirector.sql

# clean up
rm /var/www/index.html
