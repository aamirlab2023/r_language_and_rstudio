#!/bin/bash

sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

sudo apt install --no-install-recommends r-base

sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+
sudo apt-get update
sudo apt-get update

sudo dpkg -i rstudio-2023.09.1-494-amd64.deb
sudo apt-get install -f
sudo apt-get update
sudo apt-get update
sudo dpkg -i rstudio-2023.09.1-494-amd64.deb
