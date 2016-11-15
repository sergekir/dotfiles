# sudo apt-get install libncurses5-dev libx11-dev libxpm-dev libxt-dev cmake
make distclean
./configure --with-features=huge --enable-python3interp
make
sudo make install
