FROM ubuntu:latest

ENV PYTHON_VERSION=3.11
ENV REALSENSE_VERSION=2.53.1

RUN apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
  add-apt-repository ppa:deadsnakes/ppa && \
  apt-get -y update && \
  apt-get -y install python${PYTHON_VERSION} python${PYTHON_VERSION}-dev python3-pip libssl-dev libxinerama-dev libsdl2-dev curl libblas-dev liblapack-dev gfortran libssl-dev git cmake libusb-1.0-0-dev && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean
RUN cd / && \
  git clone --depth 1 --branch v${REALSENSE_VERSION} https://github.com/IntelRealSense/librealsense.git && \
  cd librealsense && \
  mkdir build && \
  cd build && \
  cmake ../ -DBUILD_PYTHON_BINDINGS:bool=true -DPYTHON_EXECUTABLE=/usr/bin/python${PYTHON_VERSION} -DCMAKE_BUILD_TYPE=Release && \
  make -j4
