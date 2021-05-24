#! /bin/bash
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y
sudo apt install ansible -y


