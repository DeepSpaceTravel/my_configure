#!/usr/bin/sh

sudo snapper --config root_snapshots create-config /
sudo snapper --config home_snapshots create-config /home

# echo -e "\nPRUNENAMES = \".snapshots\"" >> /etc/updatedb.conf
