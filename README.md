# Built pyrealsense2 for Docker

[![ubuntu_based](https://github.com/nixone/pyrealsense2-docker/actions/workflows/ubuntu_based.yml/badge.svg)](https://github.com/nixone/pyrealsense2-docker/actions/workflows/ubuntu_based.yml)
[![l4t_based](https://github.com/nixone/pyrealsense2-docker/actions/workflows/l4t_based.yml/badge.svg)](https://github.com/nixone/pyrealsense2-docker/actions/workflows/l4t_based.yml)

[See on hub.docker.com](https://hub.docker.com/r/nixone/pyrealsense2)

## What's in

* Built and prepared with python3.11
* [pyrealsense 2.53.1](https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python)

## No device connected

Add `-v /dev:/dev --device-cgroup-rule "c 81:* rmw" --device-cgroup-rule "c 189:* rmw"` as `docker run` options. 
