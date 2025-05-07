#!/bin/sh
#
sudo usermod -a -G wireshark $USER
echo "Log in again for it usermod to take effect"

sudo chgrp wireshark /usr/bin/dumpca
sudo chmod o-rx /usr/bin/dumpcapp
