#! /bin/bash

## https://gist.github.com/ebta/2537eb332fcf48e385e672d57015498c

## Add Docker's official GPG key:
#sudo apt-get install -y ca-certificates curl
#sudo install -m 0755 -d /etc/apt/keyrings
#sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
#sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt-get update

# sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.7.22-1_amd64.deb
# wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-buildx-plugin_0.17.1-1~ubuntu.20.04~focal_amd64.deb
# wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce-cli_27.3.1-1~ubuntu.20.04~focal_amd64.deb
# wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce_27.3.1-1~ubuntu.20.04~focal_amd64.deb
# wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-compose-plugin_2.29.7-1~ubuntu.20.04~focal_amd64.deb

sudo dpkg -i ./containerd.io_<version>_<arch>.deb \
  ./docker-ce_<version>_<arch>.deb \
  ./docker-ce-cli_<version>_<arch>.deb \
  ./docker-buildx-plugin_<version>_<arch>.deb \
  ./docker-compose-plugin_<version>_<arch>.deb

# sudo dpkg -i *.deb

sudo usermod -aG docker ${USER}


# ... mirror
