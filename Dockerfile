FROM nvcr.io/nvidia/l4t-base:r32.5.0
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install python3.8 python3.8-dev python3-pip libssl-dev libxinerama-dev libsdl2-dev curl libblas-dev liblapack-dev gfortran libssl-dev git cmake libusb-1.0-0-dev
RUN cd / && mkdir workspace && cd workspace
WORKDIR /workspace
RUN git clone --depth 1 --branch v2.47.0 https://github.com/IntelRealSense/librealsense.git
WORKDIR /workspace/librealsense
RUN mkdir build
WORKDIR /workspace/librealsense/build
RUN cmake ../ -DBUILD_PYTHON_BINDINGS:bool=true -DPYTHON_EXECUTABLE=/usr/bin/python3.8
RUN make -j4
RUN make install
ENV PYTHONPATH /usr/local/lib:/usr/local/lib/python3.8/pyrealsense2
RUN python3.8 -m pip install cython
RUN python3.8 -m pip install pybind11
RUN python3.8 -m pip install scipy
RUN python3.8 -m pip install numpy
RUN python3.8 -m pip install scikit-build
RUN python3.8 -m pip install opencv-python
RUN python3.8 -m pip install PyYAML
RUN python3.8 -m pip install Jetson.GPIO
