#! /bin/bash

sudo useradd -m public
sudo passwd public # password set to public

# ssh-copy-id -i ~/.ssh/id_rsa.pub public@hostname
