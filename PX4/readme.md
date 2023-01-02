## BUILD Code

``` docker build -t px4_docker . ```

## RUN CODE


``` docker run -it -p 14540:14540/udp -p 4560:4560 -e PX4_SIM_HOST_ADDR=192.168.0.2 --name <container name> px4_docker ```
