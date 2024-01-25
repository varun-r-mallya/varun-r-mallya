#!/bin/bash

#run sudo apt once and enter password
#install burpsuite 
#nvidiadrivers CUDA hibernate clang LLVM g++ gcc go rust 
# https://linuxhint.com/enable-hibernate-ubuntu-22-04-lts/	HIBERNATE
# https://docs.docker.com/engine/install/ubuntu/	DOCKER
# https://www.rust-lang.org/tools/install	RUST
# https://go.dev/doc/install	GOLANG
# https://portswigger.net/burp/releases/professional-community-2023-11-1-5?requestededition=community&requestedplatform=	BURPSUITE
# CHANGE TIME SETTINGS TO REMOVE TIME ZONE CONFLICTS FOR WINDOWS
# 
mkdir working;
tar -xzvf myrepo.tar.gz;
tar -xxvf Downloads.tar.xz;
tar -xxvf MentoGram.tar.xz;

cd working;
sudo apt update;
sudo apt-get upgrade;
sudo apt install wget curl calc python3 python-is-python3 git neovim htop vlc;
sudo snap install --classic code;
sudo snap install spotify;
sudo snap install telegram-desktop;
sudo snap install discord;
sudo snap install brave;
sudo snap install ghidra;
pip install numpy pandas scikit-learn jupyter keras tensorflow torch nltk virtualenv;
sudo add-apt-repository ppa:wireshark-dev/stable;
sudo apt update;
sudo apt install wireshark;
sudo apt-get install gnupg curl;
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.com/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install lts/iron		#CHANGE PERIODICALLY
nvm use lts/iron		#CHANGE PERIODICALLY
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
timedatectl set-local-rtc 1

sudo ubuntu-drivers install


wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.3.2/local_installers/cuda-repo-ubuntu2204-12-3-local_12.3.2-545.23.08-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-12-3-local_12.3.2-545.23.08-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-12-3-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-3

sudo apt-get install -y cuda-drivers

sudo apt update && sudo apt upgrade

sudo apt install clang
clang --version
sudo apt install llvm
git config --global user.name "varun-r-mallya"
git config --global user.email "varunrmallya@gmail.com"

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
code

