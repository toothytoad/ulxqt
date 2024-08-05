#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "Disabling the print service"
systemctl unmask cups
systemctl enable cups

