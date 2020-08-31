#!/bin/bash



git clone --quiet --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs ErfanGSIs >> /dev/null

if [[ $( ls /usr/bin | grep telegram) ]]; then
    echo "Telegram is Installed. Skip."
else
    sudo install telegram /usr/bin
fi

if [[ $( ls /usr/bin | grep url2gsi) ]]; then
     echo "url2GSI binary exists. Skip."
else
    sudo install url2gsi /usr/bin
fi

TOKEN=$(cat token.txt)

if [[ $( ls /etc | grep telegram.sh.conf) ]]; then
   echo "Bot Token configured. Skip."
else
    sudo touch /etc/telegram.sh.conf
    sudo echo "TOKEN=$TOKEN" >> "/etc/telegram.sh.conf"
fi

telegram -M "bruh"


