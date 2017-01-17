#sudo apt install apache2 openssl-blacklist ssl-cert php5 php5-gd php5-json php5-mcrypt php5-mysqlnd php5-recode php5-readline mcrypt php5-xmlrpc php-pear mariadb-server git 

#sudo mysql -u root -p < sql.sql

sudo perl -pi.bak -e 's/;date.timezone =/date.timezone = \"America\/Chicago\"/g' /etc/php5/apache2/php.ini 



