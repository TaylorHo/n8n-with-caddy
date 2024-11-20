#!/bin/bash

# Execute commands of different lines one by one

# Install Docker on Debian (to install on Ubuntu, change all occurences of "debian" with "ubuntu")
sudo apt update && sudo apt install ca-certificates curl git ufw -y && sudo install -m 0755 -d /etc/apt/keyrings && sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc && sudo chmod a+r /etc/apt/keyrings/docker.asc && sudo chmod a+r /etc/apt/keyrings/docker.asc && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y && sudo usermod -aG docker $USER

newgrp docker

cd ~ && git clone https://github.com/TaylorHo/n8n-with-caddy.git n8n && cd n8n && docker volume create caddy_data && docker volume create caddy_config && docker volume create n8n_data && echo "Edit the informations in .env and in Caddifile, then run 'docker-compose up -d' command"
