localization_launchers
================
Dependencies
---
To use this project you also need to download and compile this other projects:

* ### Ousters_ros
    Used to communicate with the LiDAR sensor that is installed on the ARCO and Drone.
*  ### Ars548_driver
    Used to communicate with the ARS548 radar installed on the ARCO and Drone.
      https://github.com/robotics-upo/ars548_ros
* ### Eliko_driver
    Used to communicate with the Eliko system installed on the ARCO.
      https://github.com/robotics-upo/eliko_ros

How to use the project.
---
Copy the following lines to create a workspace, clone the repository and compile it:
```
mkdir -p ~/launcher_ws/src
cd ~/launcher_ws/src
git clone https://github.com/robotics-upo/localization_launchers.git
cd ..
colcon build --symlink-install --packages-select localization_launchers
source install/setup.bash
```
Run the following line to launch the project:
```
ros2 launch localization_launchers laptop_sensors.xml
```

Experiments documentation 
---
If you want to get more information about the experiments realized with this project, you can follow the next link: [Experiments Marsupial Configuration](https://docs.google.com/document/d/1jQ7N1CK2vOdJybZ5vmochrZxTnYxCDIC2Sx_NMG0A0g/edit?usp=sharing)
