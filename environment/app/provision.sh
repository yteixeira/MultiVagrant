#! /bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs
sudo apt install npm -y
sudo npm install express
sudo npm install mongoose
sudo npm install ejs
sudo npm install -g pm2

sudo systemctl start nginx
