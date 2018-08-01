#!/usr/bin/env bash

if [ -d "/opt/zcore" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "#######################################################################"
  echo "__________                            "
  echo "\____    /____  ___________   ____   "
  echo "  /     // ___\/  _ \_  __ \_/ __ \  "
  echo " /     /\  \__(  <_> )  | \/\  ___/  "
  echo "/_______ \___  >____/|__|    \___  > "
  echo "        \/   \/                  \/   " 
  echo "#######################################################################"
  echo "### Please backup folder /opt/zcore ex.: mv /opt/zcore /opt/zcore-bkp"
  echo "#######################################################################"
else
zcore-cli stop
apt-get update
mkdir /opt/zcore
cd /opt/zcore/
apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils -y
apt-get install libboost-all-dev -y
add-apt-repository -y ppa:bitcoin/bitcoin
apt-get update
apt-get install libdb4.8-dev libdb4.8++-dev -y
cd /opt/zcore/
git clone https://github.com/zcore-coin/zcore-source.git 
cd /opt/zcore/zcore-source/
ls -l
#dd if=/dev/zero of=/swapfile bs=1024 count=2M
#chmod 600 /swapfile
#mkswap /swapfile
#swapon -a /swapfile
./autogen.sh
./configure
make install
fi