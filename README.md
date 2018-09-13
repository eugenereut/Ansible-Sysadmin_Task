# A new server with Drupal 7 and CiviCRM
Server with Drupal and CiviCRM was created by using Ansible 2.6.2 and Python 3.6.6 automation tool.
The services OS Ubuntu, Nginx, MySQL and PHP runs on an OVH VPS SSD server.

Ansible scripts installed Drupal 7.59, CiviCRM 5.4.0, Nginx 1.10.3, MySQL 5.7.23, PHP 7.0.30
on server Ubuntu 16.04.5 LTS in a secure fashion with SSL certificate from https://letsencrypt.org/.

Tools drush 8.1.17, git 2.7.4, vim 7.4 and pip 8.1.1 are installed.

Brief description how it was done:
Development servers hosted at localhost Ubuntu and LXC containers.
Production server hosted at OVH VPS.

Remote VPS server was prepared for installation with these three items:
apt install python-simplejson
Port 22 swapped to 7822 in /etc/ssh/sshd_config.
Added user ubuntu with sudo access.

#
#44 Ansible scripts and files were prepared.
#

In palybook scripts:
Private Drupal files and folders was configured for user/group www-data.

Config file for Nginx was configured with recipe from:
https://www.nginx.com/resources/wiki/start/topics/recipes/drupal/

The CiviCRM settings file was modified:
/var/www/html/drupal/sites/default/civicrm.settings.php

The link to CiviCRM is in Drupal Navigation menu.

php.ini config file was configured with recipe from:
Required PHP configuration settings
https://www.drupal.org/docs/7/system-requirements/drupal-7-php-requirements

MySQL DB CiviCRM and Drupal installed in different databases:
drupal-db, civicrm-db

PDO database extension was prepared and checked in file php.ini.
pdo_mysql.default_socket=
https://www.drupal.org/docs/7/system-requirements/database-server

#
#---------------------------------------------------
Server VPS was checked from host with Ansible and it was ready to go.
$ ansible HOST_GROUP -m ping

The setup script was prepared for run it out from terminal.
$ ./setup.sh
