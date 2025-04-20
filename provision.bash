#!/bin/bash
##
## this is a simple bash script to install basic server config
##
##     OS target: docker-first debian-based linux
##
##     Overview: update and upgrade the system, install troubleshooting tools, vim, and docker compose
##
##

set -e

reset

clear

##

echo
echo "## "
echo "## routine / provision-ubuntu-basic / starting"
echo "## "
echo

##

apt-get update

##

apt-get upgrade -y

apt-get dist-upgrade -y

##

apt-get install -y net-tools

apt-get install -y vim

##
##

#set -e;

#set -x;

## updating apt

sudo apt-get update;

##

sudo apt -y install ca-certificates curl;

### APT package dependency setup

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

## docker engine install
sudo apt update
sudo apt purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose docker docker.io
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

## chatgpts favorites
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common \
    unzip \
    zip \
    net-tools \
    dnsutils \
    git \
    htop \
    tmux \
    fail2ban \
    ufw \
    jq \
    socat \
    python3 \
    python3-pip

## Docker Start on startup
 sudo systemctl enable docker.service
 sudo systemctl enable containerd.service

## Add user to docker group
sudo usermod -aG docker $USER

# portainer install

docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts

## Make filebrowser directory
cd ~
sudo mkdir docker
cd docker
sudo mkdir filebrowser
echo "finished provision..."
## Now go to the server-starter-stack in portainer
sudo reboot
