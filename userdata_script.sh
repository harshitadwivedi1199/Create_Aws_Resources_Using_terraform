#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1
sudo systemctl start nginx
sudo systemctl enable nginx
sudo chown -R ec2-user.ec2-user /usr/share/nginx/html/
sudo chmod   0755  /usr/share/nginx/html/
sudo echo "<center><h1>Hosted using terraform</h1></center>" > /usr/share/nginx/html/index.html
sudo systemctl restart nginx