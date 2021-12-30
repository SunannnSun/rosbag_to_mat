# rosbag_to_mat
Adapted my old https://github.com/nbfigueroa/my_matlab_rosbag code to work with the ROS Toolbox for MATLAB (v 2019 and up). 

Data collection is as follows:
- Record demonstrations as time-series of geometry_msgs::PoseStamped (for position and orientation, WrenchStamped can be used for FT messages) messages in rosbags. A repo that provides useful code (for different robots) and launch files in ROS for easy data collection can be found [here](https://github.com/nbfigueroa/easy-kinesthetic-recording)
- Extract desired messages and create trajectories of matlab structures (containing all pose information) stored in .mat. 
- Segment Trajectories base on gripper state: Segmentation point defined when gripper is opened/closed -- useful for pick-and-place tasks!
---

## Examples

### Industrial Task
The script ``xsens_mitsubishi_process_rosbags.m`` loads the rosbags that were recorded by tracking the right hand of a human operator with the [Xsens MVN](https://www.xsens.com/products/mtw-awinda) Motion Capture system and workspace object locations via a dual-kinect setup using the AprilTags detection algorithm as designed for the [Mitsubishi Cobot Assista MIT Project](https://github.com/mit-meau/melfa_cobot).

<p align="center">
  <img src="https://github.com/nbfigueroa/rosbag_to_mat/blob/main/figs/mitsubishi_trajectories_APregions.png" width="500x"> 
</p>

This script only extract the trajectories and converts them to the robot's reference frame. Segmentation of individual goal-oriented sub-tasks is performed in the repo [dsltl](https://github.com/yanweiw/dsltl) which is still under development.

### Household Tasks
- **cooking preparation task:** scooping and mixing ingredients from bowls. The script ``franka_cooking_process_rosbags.m``loads the rosbags recorded by tracking the end-effector for the franka emika panda during kinesthetic demonstrations as shown [here](https://github.com/nbfigueroa/franka_interactive_controllers/blob/main/doc/instructions/kinesthetic_teaching_recording.md).

This script only extract the trajectories and converts them to the robot's reference frame. Segmentation of individual goal-oriented sub-tasks is performed in the repo [dsltl](https://github.com/yanweiw/dsltl) which is still under development.

- **table setting task:** grasping plates/cutlery from dish rack and placing it on a table. *To fill...*

## Contact
[Nadia Figueroa](https://nbfigueroa.github.io/) (nadiafig AT seas dot upenn dot edu)


