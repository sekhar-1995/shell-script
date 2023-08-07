#!/bin/bash

#Decleraing Varibales
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2098_health.zip'
#ART_NAME='2098_health'
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

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html
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

# after writing the script we will pass this statement to see the result. so here we have apssed two arguments
#./args_webscripts.sh //1st https://tooplate.com/zip-templates/2091_ziggy.zip //2nd 2091_ziggy 
