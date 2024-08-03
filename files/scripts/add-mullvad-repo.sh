#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

curl -SsL https://repository.mullvad.net/rpm/stable/mullvad.repo | pkexec tee /etc/yum.repos.d/mullvad.repo
