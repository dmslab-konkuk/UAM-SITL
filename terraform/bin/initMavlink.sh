cat <<EOF > /etc/systemd/system/px4-mav.service
[Unit]
Description=px4-mav
After=syslog.target

[Service]
User=root
Environment=MAV_IP=${MAV_IP}
Environment=MAV_PORT=${MAV_PORT}
Environment=MAV_ID=${MAV_ID}
Type=simple
WorkingDirectory=/home/mavlink-router
ExecStart= mavlink-routerd -e ${MAV_IP}:${MAV_PORT} 127.0.0.1:${MAV_PORT}

[Install]
WantedBy=multi-user.target
EOF

systemctl start px4-mav
systemctl enable px4-mav


