# rosbag_to_mat
Adapted my old https://github.com/nbfigueroa/my_matlab_rosbag code to work with the ROS Toolbox for MATLAB (v 2019 and up). 

Data collection is as follows:
- Record demonstrations as time-series of geometry_msgs::PoseStamped (for position and orientation, WrenchStamped can be used for FT messages) messages in rosbags. A repo that provides useful code and launch files in ROS for easy data collection can be found here: https://github.com/nbfigueroa/easy-kinesthetic-recording  
- Extract desired messages and create trajectories of matlab structures (containing all pose information) stored in .mat. 
- Smooth/filter trajectories. 
- Segment Trajectories base on gripper state: Segmentation point defined when gripper is opened/closed -- useful for pick-and-place tasks!
---

## Contact
[Nadia Figueroa](https://nbfigueroa.github.io/) (nadiafig AT seas dot upenn dot edu)


