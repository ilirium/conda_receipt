#!/bin/bash

# Step: *** *** ***
# Step: Doc for script
# Source: https://pythonspeed.com/articles/system-packages-docker/

# Step: Strict mode options
# Bash "strict mode", to help catch problems and bugs in the shell
# script. Every bash script you write should include this. See
# http://redsymbol.net/articles/unofficial-bash-strict-mode/ for
# details.
# More details about "E" and "x":
# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eeux -o pipefail
trap "echo ERR trap fired!" ERR

# In case of error:
# set: Illegal option -o pipefail
# use: chmod +x <script_name.sh>
# and run script like this: ./<script_name.sh>
# but not like this: sh ./<script_name.sh>
# source:
# https://stackoverflow.com/questions/54055549/linux-ubuntu-set-illegal-option-o-pipefail

# Step: Tell apt-get we're never going to be able to give manual feedback
export DEBIAN_FRONTEND=noninteractive

# Step: Update the package listing, so we know what package exist
apt-get -y update

# Step: Install security updates
apt-get -y upgrade

# Step: Install development tools
apt-get -y --no-install-recommends install \
    build-essential cmake autoconf automake gdb libffi-dev zlib1g-dev libssl-dev

# Step: Delete cached files we don't need anymore
apt-get clean
rm -rf /var/lib/apt/lists/*
