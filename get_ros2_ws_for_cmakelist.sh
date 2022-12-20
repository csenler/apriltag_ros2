#!/bin/bash
source "${HOME}/.bashrc"

SLAM_ROOT_DIR=${PWD}

ROS2_WS_DIR=$(cd ${SLAM_ROOT_DIR}/../..; pwd) 

cd ${ROS2_WS_DIR}

## IMPORTANT: cmakelist will receive the output of first echo command as result, therefore only return value should be echoed to stdout
echo ${ROS2_WS_DIR}