#!/usr/bin/env bash

# Update
apt-get update

# Install nginx
apt-get -y install nginx

# Remove nginx default site
rm /etc/nginx/sites-enabled/site.conf

# Linking the site.conf to our own configuration
ln -s /vagrant/provision/site.conf /etc/nginx/sites-enabled

# Install git
sudo apt-get -y install git

nginx -s reload

#print vm ip address
ip addr show eth1 | egrep "inet\ " | cut -f1 -d "/" | cut -f2 -d "t"