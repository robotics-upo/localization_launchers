#!/bin/bash
# Synchronize time
#sudo systemctl restart chrony.service
#sudo chronyc -a makestep

source /opt/ros/one/setup.bash
export ROS_MASTER_URI=http://arco:11311
if [ "$#" -eq 0 ]; then
    echo "Please insert the route to the .yaml file"
    exit 1
fi

PARAMETER_FILE="$1"
rosparam load "$PARAMETER_FILE"

# Check if there are characters in the first line of yaml. Then take titles of topics and saves it as a parameter for the bridge
if [ -n "$PARAMETER_FILE" ]; then                             
    topic=$(head -n 1 "$PARAMETER_FILE" | cut -d ":" -f 1)
    source /opt/ros/humble/setup.bash
    source $HOME/bridge_ws/install/setup.bash
    export ROS_MASTER_URI=http://arco:11311
# Delete parameters when bridge terminates or fails
    cleanup(){                                             
        export ROS_MASTER_URI=http://arco:11311
        rosparam delete /"$topic"
    }
    trap cleanup EXIT
#Bridge
    ros2 run ros1_bridge parameter_bridge "$topic"
else
    echo "ERROR: Yaml file cannot be loaded"
    exit 1
fi