#!/bin/bash

source /opt/ros/one/setup.bash
export  ROS_MASTER_URI=http://arco:11311
if [ "$#" -eq 0 ]; then
    echo "Please insert the route to the .yaml file"
    return 1
fi
PARAMETER_FILE="$1"
rosparam load "$PARAMETER_FILE"
source /opt/ros/humble/setup.bash
source $HOME/bridge_ws/install/setup.bash
export  ROS_MASTER_URI=http://arco:11311
ros2 run ros1_bridge parameter_bridge