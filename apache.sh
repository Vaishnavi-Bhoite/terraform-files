#!/bin/bash
sudo yum install git httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
git clone https://github.com/Vaishnavi-Bhoite/Netflix-Clone.git
cp -rvf Netflix-Clone/* /var/www/html/
