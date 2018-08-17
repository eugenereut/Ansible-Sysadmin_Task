# Compucorp
The automation install Drupal 7/CiviCRM/Nginx/MySQL/PHP on server in a secure fashion with SSL certificate.

# Development servers hosted at Ubuntu and LXC containers

# Prepare files
ansible_files/inventory/hosts
ansible_files/templates/mysql/servers.vars.yml

# Prepare host
$ apt install python-simplejson
$ apt install openssh-server

sshd_config
Port 7822

# Run
./setup.sh
