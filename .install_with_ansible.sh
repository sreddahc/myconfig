#!/bin/sh

# Install Ansible
pipx install --include-deps ansible

# Run Ansible
cd ./ansible
ansible-playbook site.yml --ask-become-pass
