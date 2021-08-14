#!/usr/bin/sh
user=$(whoami)

if [ $user == "root" ]; then 
	if [ $1 -le 100 ]; then 
		echo $1 > /etc/.battery.conf  &!
		sv restart /etc/runit/sv/setcharge > /dev/null &!
	else 
		echo "Enter the number between 1 and 100!"
	fi
else
	echo "Please use root permission for this!"
fi

