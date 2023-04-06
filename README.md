# Built pyrealsense2 for Docker

[![build](https://github.com/nixone/pyrealsense2-docker/actions/workflows/build.yml/badge.svg)](https://github.com/nixone/pyrealsense2-docker/actions/workflows/build.yml)

[See on hub.docker.com](https://hub.docker.com/r/nixone/pyrealsense2)

## What's in

* [pyrealsense 2.53.1](https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python) built for python 3.10

ubuntu:latest based (arm64, amd64)

## FAQ: No device connected

Add `-v /dev:/dev --device-cgroup-rule "c 81:* rmw" --device-cgroup-rule "c 189:* rmw"` as `docker run` options. 
