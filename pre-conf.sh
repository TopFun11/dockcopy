#!/bin/bash
set -e

 cd /var/www
 #git clone https://9a32a89b5569bc4a11a3819a4749eb55d291dea5@github.com/kn100/champions-deploy.git 
 #curl -o cakephp.zip -SL "https://github.com/cakephp/cakephp/releases/download/3.3.8/cakephp-3-3-8.zip"
 #unzip cakephp.zip
 #rm cakephp.zip
 
 #to fix error relate to ip address of container apache2
 echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
 ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
 
 a2enmod rewrite
 rm -R /var/www/html
