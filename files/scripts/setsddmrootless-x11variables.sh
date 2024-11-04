#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

#mkdir -p /etc/sddm.conf.d/

echo '

[General]
DisplayServer=x11-user

' > /etc/sddm.conf.d/rootless-x11.conf

#cp /usr/lib/sddm.conf.d/rootless-x11.conf /etc/sddm.conf.d/rootless-x11.conf