#!/bin/sh

# Script to setup a system how I like to use it.

# Install dependencies of Ansible
# apt install -y git pipx # If missing
# pipx ensurepath # If not in PATH

# Install Ansible
# pipx install --include-deps ansible # If missing

# Run Ansible
cd ./ansible
ansible-playbook site.yml