#!/bin/bash

echo "testing"
echo "test.sh"


sudo apt-get install $super_secret
sudo systemctl start $super_secret

sudo systemctl status $super_secret
