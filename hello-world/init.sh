cd ~

#install git
wget https://github.com/git/git/archive/v2.14.0.tar.gz
tar -xzf v2.14.0.tar.gz
cd v2.14.0
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info

cd ~

#get the example
git clone https://github.com/zwqStella/Resteasy-example-zoo
