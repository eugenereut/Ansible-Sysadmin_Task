# Devops/Sysadmin Task
Automate the creation of a new server with Drupal 7 and CiviCRM.

The server should use Nginx on an AWS micro instance (or similar).

The automation should install Drupal 7 and CiviCRM on this server in a secure fashion with SSL certificate from https://letsencrypt.org/.
You may wish to research what Nginx configurations are required to make both Drupal AND CiviCRM secure.
Please install CiviCRM and Drupal in different databases as this is considered best practice.

Configure Drupal to have a private files folder. Ensure this is secure within your NGINX configuration.
Ensure that the Nginx configuration is secure for Drupal and CiviCRM including any other files upload folders.
Modify the CiviCRM settings file so that the CiviCRM extension directory is set using settings files variables (https://docs.civicrm.org/sysadmin/en/latest/customize/settings/)
Make sure your playbook/automation installs all necessary packages required for a server to run Drupal 7/civicrm .i.e mysql,php,nginx.
The playbook is to be aimed for use on a Debian based OS. We prefer Ubuntu 16.04.

Optional/bonus points:

Install Drush to the server for the appropriate user
Modify the Drupal settings files so that Drupal views can use the CiviCRM database (https://wiki.civicrm.org/confluence/display/CRMDOC/Views3+Integration)
Install Git to the server for the appropriate user


The setup script was prepared for run a playbooks from terminal.
$ ./setup.sh
