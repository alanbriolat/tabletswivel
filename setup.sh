#!/bin/bash

echo "Adding group 'tabletswivel'"
sudo groupadd --system tabletswivel
#echo "Adding user '${USER}' to group 'tabletswivel'"
sudo gpasswd -a "${USER}" tabletswivel

sudo cp -av etc /
