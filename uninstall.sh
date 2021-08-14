#!/usr/bin/sh

if [ $(whoami) == "root" ]; then
	rm -rfv /usr/bin/setcharge
	rm -rfv /etc/runit/sv/setcharge
	rm -rfv /etc/.battery.conf 
	echo "		Thanks for use it :)"
else
	echo "Please use root permission for this!"
fi

