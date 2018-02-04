sudo apt-get update
sudo apt-get upgrade -y
sudo apt install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF ..
make install
wget $site/run.sh
echo "screen -d -r" >> /root/.bashrc
screen

