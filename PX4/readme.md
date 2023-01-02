## BUILD Code

``` docker build -t px4_docker . ```

## RUN CODE


``` docker run -it -p 14540:14540/udp -p 4560:4560 -e PX4_SIM_HOST_ADDR=192.168.0.2 --name <container name> px4_docker

 docker exec af6896ce6148 mavlink-routerd -e 192.168.0.4:14550 127.0.0.1:14550
 
 
 ```
