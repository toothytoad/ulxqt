#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

curl -Lo /etc/yum.repos.d/_copr_atim_starship https://copr.fedorainfracloud.org/coprs/atim/starship/repo/fedora-"${OS_VERSION}"/atim-starship-fedora-"${OS_VERSION}".repo
curl -Lo /etc/yum.repos.d/_copr_atim_lazygit https://copr.fedorainfracloud.org/coprs/atim/lazygit/repo/fedora-"${OS_VERSION}"/atim-lazygit-fedora-"${OS_VERSION}".repo
curl -Lo /etc/yum.repos.d/_copr_dschubert_xiccd https://copr.fedorainfracloud.org/coprs/dschubert/xiccd/repo/fedora-"${OS_VERSION}"/dschubert-xiccd-fedora-"${OS_VERSION}".repo

rpm-ostree install starship lazygit xiccd
rm -f /etc/yum.repos.d/_copr_atim_starship.repo /etc/yum.repos.d/_copr_atim_lazygit.repo /etc/yum.repos.d/_copr_dschubert_xiccd.repo