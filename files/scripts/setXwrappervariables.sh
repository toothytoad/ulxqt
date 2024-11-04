#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


echo '

allowed_users = console

needs_root_rights = no

' > /etc/X11/Xwrapper.config

#cp /usr/lib/X11/Xwrapper.config /etc/X11/Xwrapper.config