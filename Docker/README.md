# Docker

## [Docker Desktop](https://docs.docker.com/desktop/setup/install/linux/)

If you can access `download.docker.com`:
```bash
## https://gist.github.com/ebta/2537eb332fcf48e385e672d57015498c

## Add Docker's official GPG key:
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

# Download the latest DEB package from
# https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo apt-get install ./docker-desktop-amd64.deb
```

If you cannot access `download.docker.com`:
1. Manually install (not recommended):
```bash
# Download docker-ce-cli from
# https://download.docker.com/linux/ubuntu/dists/<dist>/pool/stable/amd64/docker-ce-cli_<version>_<arch>.deb
sudo dpkg -i docker-ce-cli_<version>_<arch>.deb
# Download the latest DEB package from
# https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo apt install ./docker-desktop-amd64.deb
```

2. [清华源](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/) (recommended):
```bash
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://mirrors6.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# 6 for IPv6

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

> [!NOTE]
> - To execute the docker command without sudo:
> ```bash
> sudo usermod -aG docker ${USER}
> sudo usermod -aG docker username
> ```
> 
> - You should initialize [`pass`](https://docs.docker.com/desktop/setup/sign-in/#signing-in-with-docker-desktop-for-linux) before signing in with Docker Desktop for Linux.
> 

## NVIDIA Container Toolkit

See [https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html).
