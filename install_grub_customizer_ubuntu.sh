#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating package list..."
sudo apt update

echo "Installing grub-customizer..."
sudo apt install -y grub-customizer

echo "Installation complete!"
