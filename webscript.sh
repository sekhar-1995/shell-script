#!/bin/bash

#Installing Dependencies
echo "########"
echo "Installing Packages"
echo "########"
sudo yum install wget unzip httpd -y > /dev/null
echo

# Start & Enable services
echo "###################"
echo "Start & enable HTTPD service"
echo "###################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating TMP Directory
echo "##############"
echo "Starting Artifact Deployment"
echo "##############"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html
echo

# Bounce Service
echo "#############"
echo "Restart HTTPD service"
echo "#############"
sudo systemctl restart httpd
echo

# Clean Up
echo "#############"
echo "Removing Temporary Files"
echo "#############"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html

