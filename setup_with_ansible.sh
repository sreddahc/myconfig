#!/bin/sh

# Script to setup a system how I like to use it.

# Install dependencies of Ansible
apt install pipx
pipx ensurepath

# Install Ansible
pipx install --include-deps ansible

# Run Ansible
ansible-playbook ansible/site.yml