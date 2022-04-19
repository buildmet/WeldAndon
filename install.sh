#!/bin/sh

echo " Updating and Upgrading System"

sudo apt-get update

sudo apt-get upgrade -y

echo " Installing Develop Environment"

sudo apt-get install python3-dev python3-pip

echo "Creating logs folders"

mkdir error_logs
mkdir logs
mkdir backup_logs

sudo "Installing Libraries"

sudo pip3 -r requirements.txt

sudo timedatectl set-ntp false

echo " Installing supporing packages"

sudo apt install mpg123


exit 0