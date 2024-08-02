#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


# Hardcoded download and install of opensnitch until I have time to build a script.

pip install qt-material grpcio-tools unicode_slugify pyinotify

wget -c https://github.com/evilsocket/opensnitch/releases/download/v1.6.6/gustavo_iniguez_goia.asc https://github.com/evilsocket/opensnitch/releases/download/v1.6.6/opensnitch-1.6.6-1.x86_64.rpm https://github.com/evilsocket/opensnitch/releases/download/v1.6.6/opensnitch-ui-1.6.6-1.noarch.rpm

rpm --import gustavo_iniguez_goia.asc

dnf install -y opensnitch-1.6.6-1.x86_64.rpm opensnitch-ui-1.6.6-1.noarch.rpm

