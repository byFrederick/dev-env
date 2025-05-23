#!/bin/bash

# Check if docker is already installed
if command -v docker > /dev/null 2>&1; then
  echo "Docker is already installed"
else
  # Downloads docker using the script from the docker website
  if command -v curl > /dev/null 2>&1; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh ./get-docker.sh --dry-run
    echo "Docker installed"
  else
    echo "Curl is not installed, please install it"
    exit 1
  fi
fi

# Enables and starts docker if systemctl is available, this only works on linux systems that use systemd
if command -v systemctl > /dev/null 2>&1; then
  systemctl enable --now docker
fi

if ! docker volume inspect dev-env_db_data > /dev/null 2>&1; then
  docker volume create dev-env_db_data
fi

docker compose up -d --build