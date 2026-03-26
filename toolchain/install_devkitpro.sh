#!/bin/bash

# --- Pre-condition Check ---
# This script is specifically designed for Ubuntu Noble (24.04) and newer.
# It handles the modern GPG key requirements to avoid "NO_PUBKEY" errors.

echo "--- Starting devkitPro Installation for Ubuntu Noble ---"

# 1. Download the official installer script (used for basic dependencies)
echo "[1/4] Downloading official installer script..."
wget -q https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x install-devkitpro-pacman

# 2. Set up GPG Key using the modern keyring format
echo "[2/4] Setting up GPG Key (C9D672AF4128A2F1)..."
sudo gpg --no-default-keyring \
    --keyring /usr/share/keyrings/devkitpro-archive-keyring.gpg \
    --keyserver keyserver.ubuntu.com \
    --recv-keys C9D672AF4128A2F1

# 3. Create the repository file linked to the specific keyring
echo "[3/4] Configuring devkitPro repository in sources.list.d..."
echo "deb [signed-by=/usr/share/keyrings/devkitpro-archive-keyring.gpg] https://apt.devkitpro.org stable main" | \
    sudo tee /etc/apt/sources.list.d/devkitpro.list > /dev/null

# 4. Update and Install
echo "[4/4] Updating package lists and installing dkp-pacman..."
sudo apt update
sudo apt install devkitpro-pacman -y

echo "--------------------------------------------------------"
echo "INSTALLATION COMPLETE!"
echo "Verifying installation:"
dkp-pacman --version
echo "--------------------------------------------------------"
echo "Installing devkitPro"
sudo dkp-pacman -S nds-dev