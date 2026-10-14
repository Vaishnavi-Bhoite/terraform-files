#!/bin/bash
sudo yum install nginx git -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo git clone https://github.com/Vaishnavi-Bhoite/Ultraedit-Clone.git
sudo cp -rvf Ultraedit-Clone/* /usr/share/nginx/html/
