#!/bin/bash
if
	grep ^display-setup-script /etc/lightdm/lightdm.conf ; 
then
	echo "Already a display-setup-script. It may already do what you need. Else please adjust manually" ; 
else
	sudo bash -c "echo display-setup-script=$PWD/set-screen-brightness >> /etc/lightdm/lightdm.conf" ; 
fi
