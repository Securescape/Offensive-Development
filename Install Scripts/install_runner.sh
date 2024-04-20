#!/bin/bash
###########################
# Gitlab Runner Installer #
###########################

curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb"
sudo apt install git
sudo dpkg -i gitlab-runner_amd64.deb
sudo systemctl status gitlab-runner
sudo gitlab-runner register