#!/bin/sh

# Script to setup a system how I like to use it.

# Install dependencies of Ansible
apt install pipx

# Install Ansible
pipx install --include-deps ansible

# Run Ansible
