sudo docker exec -it c66834c31dd1 ssh -i /home/pem/dmslab.pem root@117.16.137.213 "cd /home/PX4-Autopilot;export PX4_SIM_PORT=4561; export PX4_SIM_HOST_ADDR=117.16.136.191; export MAV_ID=2; make px4_sitl_default none_iris;"

sudo docker exec -it c66834c31dd1 ssh -i /home/pem/dmslab.pem root@117.16.137.238 "cd /home/PX4-Autopilot;export PX4_SIM_PORT=4560; export PX4_SIM_HOST_ADDR=117.16.136.191; export MAV_ID=1; make px4_sitl_default none_iris;"


