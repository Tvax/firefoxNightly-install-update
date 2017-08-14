#!/bin/sh
clear;
echo "Close Firefox !";
rm -r /tmp/firefox*;
wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux&lang=en-US";
tar -xjvf /tmp/firefox* -C /tmp/;
mv /tmp/firefox/ /tmp/firefox-nightly/;
killall -9 firefox;
clear;
echo Wait 10s
sleep 10;
sudo cp -r /tmp/firefox-nightly/ /opt/;

echo "And you're done !"
BLUE=`tput setaf 4`
echo "Thanks for using this script"
echo "If you have any issues hit me up here :"
echo "https://github.com/Tvax/firefoxNightly-install-update/issues"
echo "Follow me !"
echo "${BLUE}https://mstdn.io/@Tvax_x"
