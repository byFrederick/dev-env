#!/bin/bash

# Check if docker is already installed
if command -v docker &> /dev/null; then
  echo "Docker is already installed"
else
   # Downloads docker using the script from the docker website
  if command -v curl &> /dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh ./get-docker.sh
    rm get-docker.sh
    echo "Docker installed"
  else
    echo "Curl is not installed, please install it"
    exit
  fi
fi

# Enables and starts docker if systemctl is available, this only works on linux systems that use systemd
if command -v systemctl &> /dev/null; then
  sudo systemctl enable --now docker
fi

if [ ! -f .env ]; then
  cp .env.example .env
fi

sudo docker compose up -d --build

echo "Everything's setup"