# A new server with Drupal 7 and CiviCRM
The automation installed Drupal 7, CiviCRM, Nginx, MySQL, PHP on server in a secure fashion with SSL certificate from https://letsencrypt.org/.

Tools drush, git, vim and pip are installed.

Brief how-to
Development servers hosted at localhost Ubuntu and LXC containers.
Production server hosted at OVH VPS.

Login to remote VPS and prepare server for deployment
$ apt install python-simplejson
$ apt install openssh-server

All servers runs ssh with port 7822
Please swap 22 to 7822 in /etc/ssh/sshd_config.

All servers has user ubuntu with sudo access.

Ensure Ansible ready to go
$ ansible HOST_GROUP -m ping

Run out the setup script from your terminal
$ ./setup.sh

All credentials for Drupal in file ansible_files/templates/mysql/servers.vars.yml

root access to remote VPS is blocked
Please use this link to remote VPS
ssh -p 7822 ubuntu@vps200756.vps.ovh.ca
pass jaecH7ya
