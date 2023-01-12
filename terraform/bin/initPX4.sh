#!/bin/bash
# mkdir PX4
# cd PX4
sudo apt-get -y update
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
cat <<EOF > /etc/systemd/system/px4-daemon.service
[Unit]
Description=Daemon Test Service
After=syslog.target

[Service]
Environment=PX4_SIM_PORT=${PX4_SIM_PORT}
Environment=PX4_SIM_HOST_ADDR=${PX4_SIM_HOST_ADDR}
Type=simple
WorkingDirectory=/home/PX4-Autopilot
ExecStart=make px4_sitl_default none_iris

[Install]
WantedBy=multi-user.target
EOF
echo "============Daemon Apply============="
systemctl start px4-daemon
systemctl enable px4-daemon
echo "============Daemon Complete============="
