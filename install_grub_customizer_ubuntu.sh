#!/bin/bash
set -e

echo "Installing dependencies..."
sudo apt update
sudo apt install -y cmake build-essential libgtkmm-3.0-dev gettext libssl-dev libarchive-dev git

echo "Cloning grub-customizer source code..."
git clone https://github.com/danielrichter2007/grub-customizer.git
cd grub-customizer

echo "Building grub-customizer..."
cmake .
make -j$(nproc)

echo "Installing grub-customizer..."
sudo make install

echo "Done. You can now run grub-customizer from your menu or by typing 'grub-customizer'."
