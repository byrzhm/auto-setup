#! /bin/bash

## Install Apache and WebDAV Modules
sudo apt update
sudo apt install apache2
sudo a2enmod dav dav_fs

## Configure Apache for WebDAV
sudo mkdir /var/www/webdav
sudo chown www-data:www-data /var/www/webdav
sudo chmod 755 /var/www/webdav

sudo vim /etc/apache2/sites-available/webdav.conf

'
<VirtualHost *:80>
    ServerAdmin admin@example.com
    ServerName example.com

    DocumentRoot /var/www/webdav
    <Directory /var/www/webdav>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    Alias /webdav /var/www/webdav             <--- or Alias /zotero /var/www/webdav

    <Location /webdav>                        <--- or <Location /zotero>
        DAV On
        AuthType Basic
        AuthName "WebDAV Restricted"          <--- or AuthName "Zotero WebDAV"
        AuthUserFile /etc/apache2/webdav.passwd
        Require valid-user
    </Location>
</VirtualHost>
'

## Set Up Authentication
sudo htpasswd -c /etc/apache2/webdav.passwd your_username # ming1023:I00US;XZ'dV

## Enable the WebDAV Site and Restart Apache
sudo a2ensite webdav.conf
sudo systemctl restart apache2

