#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


#    Dependencies
#
#    GNU C Compiler
#    GNU make
#    Xlib (libX11, optional)
#    XInput2 (libXi, optional)
#    Xtest (libXtst, optional)

#  Compile and Install
#
#  If you have the dependencies installed, just run ./configure and then make to compile the daemon, 
#  and then make install, to install it. The default installation prefix is /usr/local. 
#  If you wish to install somewhere else, you may pass --prefix=/whatever to the configure script
#
#  For systems running systemd, there is a spacenavd.service file under contrib/systemd. Follow your system documentation for how to use it.

#   libX11 libXi libXtst
# musl-gcc

#cd /tmp

 #     "browser_download_url": "https://github.com/FreeSpacenav/spacenavd/releases/download/v1.3/spacenavd-1.3.tar.gz"


curl -L 'https://api.github.com/repos/FreeSpacenav/spacenavd/releases/latest' | \
  awk -F \" -v RS="," '/tarball/ {print $(NF-1)}'
  
URL=$(wget https://api.github.com/repos/FreeSpacenav/spacenavd/releases/latest -O - | awk -F \" -v RS="," '/browser_download_url/ {print $(NF-1)}'); wget $URL -O $(basename "$URL")

tar -xzvf $(basename "$URL") && cd $(basename -s '.tar.gz' $(basename "$URL"))

dnf install -y gcc make libX11-devel libXi-devel libXtst-devel

bash configure && make && make install

dnf uninstall -y gcc make libX11-devel libXi-devel libXtst-devel

