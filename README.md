# Ansible scripts are creating a new server with Drupal7 and CiviCRM.

The automation install Drupal7 and CiviCRM on server in a secure fashion with SSL certificate from https://letsencrypt.org/.
CiviCRM and Drupal in different databases as this is considered best practice.

CiviCRM is set using settings files variables (https://docs.civicrm.org/sysadmin/en/latest/customize/settings/)

The playbook/automation installs all necessary packages required for a server to run Drupal7/CiviCRM: MySQL,PHP,NGINX, Drush, Git.

The Drupal settings files modified so that Drupal views can use the CiviCRM database (https://wiki.civicrm.org/confluence/display/CRMDOC/Views3+Integration)

The playbooks are tested in Ubuntu 18.04.

The setup script run a playbooks from terminal: ./setup.sh
