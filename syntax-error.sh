#!/bin/bash

# General tools and updating
sudo apt update
sudo apt install ubuntu-restricted-extras -y
sudo apt install software-properties-common apt-transport-https wget git neovim htop vlc -y
sudo apt install git -y
sudo apt-get install zip unzip -y

# Install VSCode
sudo snap install --classic code; # This uses snap, but use the below commands if you want to use apt.

# sudo apt install software-properties-common apt-transport-https wget -y
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# sudo apt install code -y

# Install Postman
wget https://dl.pstmn.io/download/latest/linux64
sudo tar -xvf linux64 -C /usr/bin
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.bashrc

# Install Python
sudo apt install python3 -y
sudo apt-get install python3-pip python-is-python3 -y
python3 -m pip install -r requirements.txt

# Install Ghidra (A reverse engineering tool)
sudo apt install openjdk-17-jdk openjdk-17-jre -y
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.2.2_build/ghidra_10.2.2_PUBLIC_20221115.zip
unzip ghidra_10.2.2_PUBLIC_20221115.zip
cd ghidra_10.2.2_PUBLIC
chmod +x ghidraRun
sudo ln -s `pwd`/ghidraRun /usr/bin/
cd ..

# Install Binwalk
sudo apt install binwalk -y

# Makes Windows and Ubuntu friends in terms of dealing with time.
timedatectl set-local-rtc 1

# Install NodeJS (You can change versions using nvm.)
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm list-remote
nvm install lts/iron

# Install Wireshark
sudo add-apt-repository ppa:wireshark-dev/stable -y
sudo apt update
sudo apt install wireshark -y


# Driver Installation if something breaks
# sudo ubuntu-drivers install


# Below code works only on NVIDIA enabled machines. But, not recommended.
# Installs NVIDIA drivers and CUDA Toolkit

# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
# sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
# wget https://developer.download.nvidia.com/compute/cuda/12.3.2/local_installers/cuda-repo-ubuntu2204-12-3-local_12.3.2-545.23.08-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu2204-12-3-local_12.3.2-545.23.08-1_amd64.deb
# sudo cp /var/cuda-repo-ubuntu2204-12-3-local/cuda-*-keyring.gpg /usr/share/keyrings/
# sudo apt-get update
# sudo apt-get -y install cuda-toolkit-12-3

# sudo apt-get install -y cuda-drivers
