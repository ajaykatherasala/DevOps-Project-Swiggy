#!/bin/bash

# Update packages
sudo apt update

# Install Docker
sudo apt install -y docker.io

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Install Docker Compose plugin
sudo apt install -y docker-compose-plugin

# Add current user to docker group
sudo usermod -aG docker $USER

echo "✅ Docker & Docker Compose installed successfully."
echo "🔁 Please log out and log back in or run 'newgrp docker' for group changes to apply."
