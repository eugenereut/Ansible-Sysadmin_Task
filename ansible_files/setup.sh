#!/bin/bash
play1="frontend_server-init.yml"
play2="db_server-init.yml"
play3="db-users_create.yml"
play4="drupal-civicrm_init.yml"
play5="frontend_site-create.yml"

for i in $play1 $play2 $play3 $play4 $play5
do
    ansible-playbook $i
done
