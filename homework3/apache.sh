#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl enable httpd
echo "Hello world" > /var/www/html/index.html