#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

#cd /tmp

if [ which pip ] ; then
    pip install qt-material grpcio-tools unicode_slugify pyinotify
  else
    wget -c https://bootstrap.pypa.io/pip/pip.pyz
	python pip.pyz install qt-material grpcio-tools unicode_slugify pyinotify
fi


# Hardcoded download and install of opensnitch until I have time to build a script.



wget -c https://github.com/evilsocket/opensnitch/releases/download/v1.6.7/gustavo_iniguez_goia.asc https://github.com/evilsocket/opensnitch/releases/download/v1.6.6/opensnitch-1.6.6-1.x86_64.rpm https://github.com/evilsocket/opensnitch/releases/download/v1.6.7/opensnitch-ui-1.6.7-1.noarch.rpm

rpm --import gustavo_iniguez_goia.asc

dnf install -y opensnitch-1.6.6-1.x86_64.rpm opensnitch-ui-1.6.7-1.noarch.rpm
