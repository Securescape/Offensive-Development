#!/bin/bash
###################
# Install Jenkins #
###################

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y

################
# Install Java #
################

sudo apt update
sudo apt install fontconfig openjdk-17-jre -y
java -version

#################
# Miscellaneous #
#################

# Quality of Life stuff
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "[!] SSH into your VM for the best experience."

############################
# Enable and Start Jenkins #
############################

sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "[+] Installation Complete"
echo "[!] Jenkins running on: http://$(hostname -I | cut -d " " -f 1):8080"
echo "[!] Jenkins Password  : $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)"
