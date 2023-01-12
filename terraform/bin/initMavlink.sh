cd /home
git clone https://github.com/mavlink-router/mavlink-router.git
cd mavlink-router
git submodule update --init --recursive
sudo apt-get install -y ninja-build pkg-config gcc g++ systemd
sudo pip3 install meson
sudo meson setup build .
sudo ninja -C build
sudo ninja -C build install
cat <<EOF > /etc/systemd/system/px4-mav.service
[Unit]
Description=px4-mav
After=syslog.target

[Service]
Environment=MAV_IP=${MAV_IP}
Environment=MAV_PORT=${MAV_PORT}
Type=simple
WorkingDirectory=/home/mavlink-router
ExecStart= mavlink-routerd -e ${MAV_IP}:${MAV_PORT} 127.0.0.1:${MAV_PORT}

[Install]
WantedBy=multi-user.target
EOF

systemctl start px4-mav
systemctl enable px4-mav


