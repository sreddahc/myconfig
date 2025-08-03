#!/bin/bash

# Script to setup a system how I like to use it.

# Install pipx
if [ $(cat /etc/os-release | grep ^ID | cut -f 2 -d "=") = "debian" ]; then
    sudo apt install -y git pipx
fi
if [ $(cat /etc/os-release | grep ^ID | cut -f 2 -d "=") = "fedora" ]; then
    sudo dnf install -y pipx python3-libdnf5
fi
if [ $(cat /etc/os-release | grep ^ID | cut -f 2 -d "=") = "rhel" ]; then
    sudo dnf install -y pipx python3-libdnf5
fi
if [ $(cat /etc/os-release | grep ^ID | cut -f 2 -d "=") = "ubuntu" ]; then
    sudo apt install -y git pipx
fi
pipx ensurepath
source ~/.bashrc

# Install Ansible
pipx install --include-deps ansible

# Run Ansible
cd ./ansible
ansible-playbook site.yml --ask-become-pass
