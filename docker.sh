#!/bin/bash
sudo yum install docker -y
sudo systemctl start docker 
sudo systemctl enable docker
docker run -dt --name=c1 -t -p 80:80 vaishnavibhoite/frozonshop 
