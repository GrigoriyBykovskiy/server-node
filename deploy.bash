#! /bin/bash

key=$1

if [[ "$key" = "install" ]]; then
	echo install
	sudo apt-get update
	sudo apt-get install -y nodejs
	sudo apt-get install -y npm
	sudo npm install pm2 -g
	exit
elif [[ "$key" = "delete" ]]; then
	echo delete
	sudo npm remove pm2 -g
	sudo apt-get purge -y --auto-remove nodejs
	exit
elif [[ "$key" = "start" ]]; then
	sudo pm2 start app.js --name "to-do-list"
	exit
elif [[ "$key" = "stop" ]]; then
	echo stop
	sudo pm2 kill
	exit
else
	echo something was wrong!
	exit
fi
