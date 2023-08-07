#!/bin/bash

#Decleraing Varibales
PACKAGE="httpd wget unzip"
SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME='2098_health'
TEMPDIR="/tmp/webfiles"


#Installing Dependencies
echo "########"
echo "Installing Packages"
echo "########"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable services
echo "###################"
echo "Start & enable HTTPD service"
echo "###################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating TMP Directory
echo "##############"
echo "Starting Artifact Deployment"
echo "##############"
mkdir -p $TEMPDIR
cd /tmp/webfiles
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html
echo

# Bounce Service
echo "#############"
echo "Restart HTTPD service"
echo "#############"
sudo systemctl restart $SVC
echo

# Clean Up
echo "#############"
echo "Removing Temporary Files"
echo "#############"
rm -rf $TEMPDIR
echo
