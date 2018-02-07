site=https://raw.githubusercontent.com/dnggs/vps/master/xmrstak.sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF ..
make install
cd ~/xmr-stak/build/bin
wget https://raw.githubusercontent.com/dnggs/vps/master/config.txt
echo "screen -d -r" >> /root/.bashrc
screen 
./xmr-stak

