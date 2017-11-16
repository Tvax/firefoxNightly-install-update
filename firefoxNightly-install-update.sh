#!/bin/sh
clear;
echo "Closing Firefox !";
killall -9 firefox;
rm -r /tmp/firefox*;
arch=`uname -m`
case $arch in
    "x86_64") wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64&lang=en-US";;
    "i686") wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux&lang=en-US";;
    *)  echo "Sorry, no firefox build available for $arch"; exit;;
esac
tar -xjvf /tmp/firefox* -C /tmp/;
mv /tmp/firefox/ /tmp/firefox-nightly/;
clear;
echo "Copying Firefox from /tmp to /opt !";
sudo cp -r --verbose /tmp/firefox-nightly/ /opt/;

echo "And you're done !"
BLUE=`tput setaf 4`
echo "Thanks for using this script"
echo "If you have any issues hit me up here :"
echo "https://github.com/Tvax/firefoxNightly-install-update/issues"
