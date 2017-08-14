# Firefox Nightly Install  
Easy install/update script for [Firefox Nightly](https://github.com/mozilla)  

## Install  
`wget https://raw.githubusercontent.com/Tvax/firefoxNightly-install-update/master/install-update-FirefoxNightly.sh;`  
`chmod 755 install-update-FirefoxNightly.sh;`  
`./install-update-FirefoxNightly.sh;`  

## Add to Gnome  
`sudo echo "[Desktop Entry]
Encoding=UTF-8
Name=Firefox
Comment=Firefox
GenericName=Web Browser
X-GNOME-FullName=Mozilla Firefox
Exec=/opt/firefox-nightly/firefox %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/firefox-nightly/browser/icons/mozicon128.png
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/v$
StartupWMClass=Iceweasel
StartupNotify=true" > /usr/share/applications/firefox.desktop;`  

## Add to Cron
Execute the script daily :  
`sudo wget -O /etc/cron.daily/install-update-FirefoxNightly.sh https://raw.githubusercontent.com/Tvax/firefoxNightly-install-update/master/install-update-FirefoxNightly.sh;`  
`sudo chmod 755 /etc/cron.daily/install-update-FirefoxNightly.sh;`  
