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
```bash
# Download docker-ce-cli from
# https://download.docker.com/linux/ubuntu/dists/<dist>/pool/stable/amd64/docker-ce-cli_<version>_<arch>.deb
sudo dpkg -i docker-ce-cli_<version>_<arch>.deb
# Download the latest DEB package from
# https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo apt install ./docker-desktop-amd64.deb
```

> [!NOTE]
> To execute the docker command without sudo:
> ```bash
> sudo usermod -aG docker ${USER}
> sudo usermod -aG docker username
> ```

