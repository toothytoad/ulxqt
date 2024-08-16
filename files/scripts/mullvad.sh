#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


# https://github.com/mullvad/mullvadvpn-app/issues/1570

mkdir -p "/usr/lib/opt/Mullvad VPN/resources"
ln -s '/usr/lib/opt/Mullvad VPN' '/opt/Mullvad VPN'
semanage fcontext -a -t usr_t '/usr/lib/opt/Mullvad.VPN(/.*)?'

