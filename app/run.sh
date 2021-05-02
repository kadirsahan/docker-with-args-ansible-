#!/bin/bash
#python $filename
cat /etc/hosts_extra >> /etc/hosts
sleep $slp
ansible-playbook  -i myhosts copyToLocal.yml
ansible-playbook  -i myhosts copyToRemote.yml