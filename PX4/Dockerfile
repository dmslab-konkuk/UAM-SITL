FROM ubuntu:20.04
RUN mkdir -p PX4
WORKDIR PX4
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git
RUN git clone https://github.com/PX4/PX4-Autopilot.git --recursive
RUN bash ./PX4-Autopilot/Tools/setup/ubuntu.sh --no-nuttx --no-sim-tools
WORKDIR PX4-Autopilot
RUN git fetch
RUN git checkout v1.13.2
RUN git submodule sync --recursive && git submodule update --init --recursive
RUN git add src/drivers/gps/devices
RUN export PX4_SIM_HOST_ADDR=192.168.0.2
EXPOSE 4560
EXPOSE 14540/udp
CMD ["make", "px4_sitl_default", "none_iris"]
