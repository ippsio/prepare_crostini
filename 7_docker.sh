#!/bin/bash

sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install \
   apt-transport-https \
   ca-certificates \
   curl \
   gnupg2 \
   software-properties-common
sudo curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
# sudo apt-key fingerprint 0EBFCD88 | fgrep -c "0EBF.*CD88"
# sudo apt-key fingerprint 0EBFCD88 | egrep -c "0EBF.*CD88"
VERIFY=$(sudo apt-key fingerprint 0EBFCD88 | egrep -c "0EBF CD88")
if [ "${VERIFY}" != "1" ]; then
  echo "apt-key result was.."
  echo "${VERIFY}"
  exit 1
fi

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce

sudo groupadd docker
sudo gpasswd -a $(whoami) docker
sudo usermod -aG docker $(whoami)
sudo systemctl restart docker.service

echo "********************************************"
echo " If you use docker in crostini environment, "
echo " maybe it is good to restart your ChromeOS. "
echo "********************************************"
