#!/bin/sh
clear;
echo "Close Firefox !";
wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux&lang=en-US";
tar -xjvf firefox*;
mv /tmp/firefox/ /tmp/firefox-nightly/;
killall -9 firefox;
sudo cp -r /tmp/firefox-nightly/ /opt/;
