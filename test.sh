sudo mkdir /var/www/html/
read -n1 -r -p "/var/www/html/ exists!" key
sudo rm -R /var/www/html/
read -n1 -r -p "Deleted All files" key
sudo git clone https://www.github.com/thewafflication/InvoicePlane.git /var/www/html/
read -n1 -r -p "Cloned the repsository!" key
sudo mkdir /var/www/html/uploads/customer_files/
read -n1 -r -p "Created missing folder!" key
sudo find /var/www/ -type d -exec chmod 775 {} \;
sudo find /var/www/ -type f -exec chmod 644 {} \;
read -n1 -r -p "Fixed Permissions" key
sudo chown -R www-data:www-data /var/www/
read -n1 -r -p "Fixed Owner!" key
sudo systemctl restart apache2.service
sudo systemctl status apache2.service
