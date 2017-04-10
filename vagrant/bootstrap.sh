#!/usr/bin/env bash

# Set versions
APACHE_VERSION=2.4.7*
MYSQL_VERSION=5.5
MYSQL_ROOT_PASSWORD=pass
PHP_VERSION=7.1

# Export variable to fix "dpkg-preconfigure: unable to re-open..." error
export DEBIAN_FRONTEND=noninteractive

# Add ondrej php repository
sudo add-apt-repository ppa:ondrej/php
apt-get update

# Install basic tools
apt-get install -y vim curl

# Install apache and create symlink pointing default apache web dir to /vagrant
apt-get install -y apache2="$APACHE_VERSION"

# Create symlink from default apache web dir to /vagrant
if ! [ -L /var/www/html ]; then
    rm -rf /var/www
    mkdir /var/www
    ln -fs /vagrant /var/www/html
fi

# Set ServerName to fix "AH00558: apache2: Could not reliably determine..." error
if ! fgrep ServerName /etc/apache2/apache2.conf; then
    echo "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf
fi

# Set mysql answers and install mysql-server and mysql-client
debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD"
apt-get install -y mysql-server-"$MYSQL_VERSION" mysql-client-"$MYSQL_VERSION"

# Set key_buffer_size to fix "Using unique option prefix key_buffer instead of key_buffer_size..." warning
if ! fgrep key_buffer_size /etc/mysql/my.cnf; then
    echo 'key_buffer_size = 16M' | sudo tee -a /etc/mysql/my.cnf
fi

# Install php and modules
apt-get install -y php"$PHP_VERSION" php"$PHP_VERSION"-curl php"$PHP_VERSION"-mysql php"$PHP_VERSION"-gd

# Display all errors for php
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/"$PHP_VERSION"/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/"$PHP_VERSION"/apache2/php.ini

# Allow usage of .htaccess files inside /var/www/html
if ! fgrep "/var/www/html" /etc/apache2/apache2.conf; then
    cat >> /etc/apache2/apache2.conf <<EOL
<Directory /var/www/html>
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>
EOL
fi

# Create .htaccess file
cat > /vagrant/.htaccess <<EOL
# Protect .htaccess and .htpasswd files
<FilesMatch "^(.htaccess|.htpasswd)$">
    Order Deny,Allow
    Deny from All
</FilesMatch>

# Disable directory listing
Options -Indexes

# Require authentication
AuthType Basic
AuthUserFile /vagrant/.htpasswd
AuthName "Please Authenticate"
Require valid-user
EOL

# Create .htpasswd file for dev user:pass (password is encrypted)
cat > /vagrant/.htpasswd <<EOL
user:\$apr1\$7joGMP7L\$HdJWcwvWeM9cvoeIK54u1/
EOL

# Create index.php file with phpinfo
cat > /vagrant/index.php <<EOL
<?php
phpinfo();
EOL

# Install and configure sendmail for localhost
apt-get install -y sendmail
if ! fgrep vagrant-ubuntu-trusty-64 /etc/hosts; then
    echo "127.0.0.1 localhost localhost.localdomain vagrant-ubuntu-trusty-64" | sudo tee -a /etc/hosts
fi
yes Y | sendmailconfig

# Restart apache
service apache2 restart

echo "[Info] Your project will be accessible via url: http://localhost:4567"
echo "[Info] You can check sent emails in virtual machine in /var/mail/vagrant file"
echo "[Info] Only emails to vagrant@localhost will reach destination"
echo "[Info] .htaccess authentication credentials username: user password: pass"
