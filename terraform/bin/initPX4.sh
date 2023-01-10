#!/bin/bash
# mkdir PX4
# cd PX4
sudo apt-get -y update&& sudo apt-get -y upgrade
sudo apt-get -y install git
# git clone -b forUAMSITL https://github.com/KwonSunJae/PX4-Autopilot.git --recursive
# bash ./PX4-Autopilot/Tools/setup/ubuntu.sh --no-nuttx --no-sim-tools
# cd PX4-Autopilot
# git fetch
# git submodule sync --recursive && git submodule update --init --recursive
# git add src/drivers/gps/devices
# cd ..
# git clone https://github.com/mavlink-router/mavlink-router.git
# cd mavlink-router
# git submodule update --init --recursive
# sudo apt-get install -y ninja-build pkg-config gcc g++ systemd
# sudo pip3 install meson
# sudo meson setup build .
# sudo ninja -C build
# sudo ninja -C build install
# cd ..
# cat <<EOF > /etc/resolv.conf
# nameserver 8.8.8.8
# nameserver 8.8.4.4
# EOF
# sudo apt-get install ssh
# sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
cd /home/PX4-Autopilot
make px4_sitl_default none_iris