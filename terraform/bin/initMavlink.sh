git clone https://github.com/mavlink-router/mavlink-router.git
cd mavlink-router
git submodule update --init --recursive
sudo apt-get install -y ninja-build pkg-config gcc g++ systemd
sudo pip3 install meson
sudo meson setup build .
sudo ninja -C build
sudo ninja -C build install
mavlink-routerd -e ${MAV_IP}:${MAV_PORT} 127.0.0.1:${MAV_PORT}