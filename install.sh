#!/bin/bash

echo 'Updating dependancies...'
apt-get update

echo 'Installing dependancies'
apt-get install -y git-core git scons build-essential scons libpcre++-dev libboost-dev libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev

# Get the latest version of Node
echo 'Getting the most recent version of Node'
PACKAGE=node_latest_armhf.deb
echo 'Downloading Node ...'
wget http://node-arm.herokuapp.com/$PACKAGE -O $PACKAGE

echo 'Installing Node...'
dpkg -i $PACKAGE
# Check versions
echo 'Node version:'
node -v
echo 'npm version:'
npm -v

# Install Node-RED, Mosca and plugins for Node-RED
echo 'Installing Node-RED Dependancies'
npm install -g mosca bunyan
# Isntalling Node-RED
echo 'Installing Node-RED'
npm install -g node-red
echo 'Installing Node-RED plugins'
npm install -g node-red-contrib-freeboard

# Add startup scripts
echo 'Copying startup scripts'
cp init/mosca /etc/init.d/
cp init/node-red /etc/init.d/

# Start services
echo 'Starting Mosca...'
service start mosca
echo 'Starting Node-RED...'
service start node-red

# All done
echo 'Finished !'
