# Built pyrealsense2 for Docker

[![l4t_based](https://github.com/nixone/pyrealsense2-docker/actions/workflows/l4t_based.yml/badge.svg)](https://github.com/nixone/pyrealsense2-docker/actions/workflows/l4t_based.yml)

[See on hub.docker.com](https://hub.docker.com/r/nixone/pyrealsense2)

## What's in

* [pyrealsense 2.53.1](https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python)

* l4t based (arm64 only)
* ubuntu:latest based (arm64, amd64)

## FAQ: No device connected

Add `-v /dev:/dev --device-cgroup-rule "c 81:* rmw" --device-cgroup-rule "c 189:* rmw"` as `docker run` options. 
