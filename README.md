localization_launchers
================
Dependencies
---
To use this project you also need to download and compile this other projects:

* ### ousters_ros
    Used to communicate with the LiDAR sensor that is installed on the ARCO and Drone.
*  ### ars548_driver
    Used to communicate with the ARS548 radar installed on the ARCO and Drone.
* ### eliko_driver
    Used to communicate with the Eliko sensors installed on the ARCO.

How to use the project.
---
Once you have downloaded and compiled all of the dependencies you can execute this project going to the folder where you have downloaded this project and executing the next commands on your:
```
    >colcon build --packages-select localization_launchers
    >source install/setup.bash
    >ros2 launch localization_launchers laptop_sensors
```
The first command is used to build the project.\
The second command is used to source the project.\
The last command is used to launch the project and see the results in Rviz 2.


Experiments documentation 
---
If you want to get more information about the experiments realized with this project, you can follow the next link: [Experiments Marsupial Configuration](https://docs.google.com/document/d/1jQ7N1CK2vOdJybZ5vmochrZxTnYxCDIC2Sx_NMG0A0g/edit?usp=sharing)