#!/bin/bash
#Editeur nano
sudo apt-get update
sudo apt-get install nano
# Ansible
sudo apt update
sudo apt upgrade
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
#Docker Community Edition
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
#Docker et UFW: acces bridge Docker
sed -i -e 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
#Pour avoir les acces et parler au daemon:
usermod -aG docker vagrant
mkdir /home/vagrant/.docker
chown vagrant:vagrant /home/vagrant/.docker -R
chmod g+rwx "/home/vagrant/.docker" -R