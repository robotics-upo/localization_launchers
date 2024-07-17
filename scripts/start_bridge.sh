#!/bin/bash

if[-z "$1"];then
    echo "Please insert the route to the .yaml file"
    exit 1
fi
PARAMETER_FILE="$1"
source $HOME/ros2_ws/install/setup.bash
export  ROS_MASTER_URI=http://arco:11311

if [[-f "$PARAMETER_FILE"]];then
    echo "Loading the data from $PARAMETER_FILE"
    rosparam load "$PARAMETER_FILE"
    echo "The parameters have been correctly loaded"
else
    echo "Error: The $PARAMETER_FILE file does not exist"
    exit 1
fi
ros2 run ros1_bridge parameter_bridge