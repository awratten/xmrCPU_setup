cd ~
apt-get update && apt-get install -y automake libcurl4-openssl-dev git make build-essential
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi && ./autogen.sh && ./configure CFLAGS="-O3" && make
cp ~/cpuminer-multi/minerd /usr/bin/minerd
cd ~
