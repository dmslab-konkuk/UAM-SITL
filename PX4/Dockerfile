FROM ubuntu:20.04
RUN mkdir -p PX4
WORKDIR PX4
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git
RUN git clone -b forUAMSITL https://github.com/KwonSunJae/PX4-Autopilot.git --recursive
RUN bash ./PX4-Autopilot/Tools/setup/ubuntu.sh --no-nuttx --no-sim-tools
WORKDIR PX4-Autopilot
RUN git fetch
RUN git submodule sync --recursive && git submodule update --init --recursive
RUN git add src/drivers/gps/devices
WORKDIR ..
RUN git clone https://github.com/mavlink-router/mavlink-router.git
WORKDIR mavlink-router
RUN git submodule update --init --recursive
RUN apt-get install -y ninja-build pkg-config gcc g++ systemd
RUN pip3 install meson
RUN meson setup build .
RUN ninja -C build
RUN ninja -C build install
EXPOSE 4560
EXPOSE 14540/udp
EXPOSE 14550/udp
WORKDIR ..
WORKDIR PX4-Autopilot
CMD ["make", "px4_sitl_default" ,"none_iris"]
