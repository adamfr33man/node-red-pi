#!/bin/bash

echo 'Updating dependancies...'
apt-get update

echo 'Installing dependancies'
apt-get install -y git-core git scons build-essential scons libpcre++-dev libboost-dev libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev

# Get the latest version of Node
echo 'Getting the most recent version of Node'
PACKAGE=node_latest_armhf.deb
echo 'Downloading Node ...'
wget http://node-arm.herokuapp.com/$PACKAGE

echo 'Installing Node...'
dpkg -i $PACKAGE
# Check versions
echo 'Node version:'
node -v
echo 'npm version:'
npm -v

# Install Node-red, Mosca and plugins for Node-red
echo 'Installing Node-Red Dependancies'
npm install -g mosca bunyan
# Isntalling Node-red
echo 'Installing Node-Red'
npm install -g node-red
echo 'Installing Node-Red plugins'
npm install -g node-red-contrib-freeboard

# Add startup scripts
echo 'TODO: Setup startup scripts here.'

# All done
echo 'Finished !'
