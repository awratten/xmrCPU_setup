# Update & Upgrade Apt
sudo apt-get -y update && sudo apt-get -y upgrade

# Install Required Packages via APT
sudo apt-get -y install git wget build-essential autotools-dev libcurl3 automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++

# Download Latest Source of Wold9466 Miner
git clone https://github.com/wolf9466/cpuminer-multi

# Download Latest Source of Tpruvot Miner
# This runs a little slower than Wolf from my tests
# git clone https://github.com/tpruvot/cpuminer-multi

# Change to Miner Directory
cd cpuminer-multi/

# Remove Last Miner Compile Attempt 
sudo make clean

# Compile Miner
./autogen.sh
CFLAGS="-march=native" ./configure
make

# Install Miner
sudo make install

cp minerd /usr/bin/
