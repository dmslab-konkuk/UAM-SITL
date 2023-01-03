## BUILD Code

``` docker build -t px4_mod . ```

## RUN CODE


```

docker run -it -p 14541:14540/udp -p 4561:4561 -p 14551:14550/udp -e PX4_SIM_HOST_ADDR=192.168.0.2 -e PX4_SIM_PORT=4561 --name px4_17 px4_mod

docker exec <container-id> mavlink-routerd -e 192.168.0.4:14551 127.0.0.1:14551
 
 
 ```
