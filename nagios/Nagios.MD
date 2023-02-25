```
sudo su -

```


# Nagios Core Installation
#### https://support.nagios.com/kb/article/nagios-core-installing-nagios-core-from-source-96.html#Ubuntu
```
sudo apt-get update
sudo apt-get install -y autoconf gcc libc6 make wget unzip apache2 php libapache2-mod-php7.4 libgd-dev

sudo apt-get install openssl libssl-dev


cd /tmp
wget -O nagioscore.tar.gz https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.6.tar.gz
tar xzf nagioscore.tar.gz

cd /tmp/nagioscore-nagios-4.4.6/
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all

sudo make install-groups-users
sudo usermod -a -G nagios www-data

sudo make install

sudo make install-daemoninit

sudo make install-commandmode

sudo make install-webconf
sudo a2enmod rewrite
sudo a2enmod cgi

sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo systemctl restart apache2.service
sudo systemctl start nagios.service




```


Nagios Installation:
https://support.nagios.com/kb/article/nagios-core-installing-nagios-core-from-source-96.html#Ubuntu


Username : nagiosadmin

To open Nagios: <public ipv4 address>/nagios

All files of Nagios : /usr/local/nagios/etc

nagios.cfg → Main Configuration file of Nagios Core
cgi.cfg → Contains the user and group information including its rights and permissions . This will also contain the path for all the front end files

resources.cfg → To store the sensitive information like username, password

Objects related to Configuration are stored under the : /usr/local/nagios/etc/objects
