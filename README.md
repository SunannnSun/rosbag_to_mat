# rosbag_to_mat
Adapted my old/archived [my_matlab_rosbag](https://github.com/nbfigueroa/my_matlab_rosbag) code to work with the ROS Toolbox for MATLAB (v2019 and up). 

Data collection is as follows:
1.  Record demonstrations as time-series of geometry_msgs::PoseStamped (for position and orientation, WrenchStamped can be used for FT messages) messages in rosbags. A repo that provides useful code (for different robots) and launch files in ROS for easy data collection can be found [here](https://github.com/nbfigueroa/easy-kinesthetic-recording)
2.  Extract desired messages and create trajectories of matlab structures (containing all pose information) stored in .mat. See examples below.
3.  **Segment Trajectories based on gripper state:** Segmentation point defined when gripper state has opened/closed -- useful for pick-and-place tasks!
---

## Examples

### Industrial Task
The script ``xsens_mitsubishi_process_rosbags.m`` loads the rosbags that were recorded by tracking the right hand of a human operator with the [Xsens MVN](https://www.xsens.com/products/mtw-awinda) Motion Capture system and workspace object locations via a dual-kinect setup using the AprilTags detection algorithm as designed for the [Mitsubishi Cobot Assista MIT Project](https://github.com/mit-meau/melfa_cobot).

<p align="center">
  <img src="https://github.com/nbfigueroa/rosbag_to_mat/blob/main/figs/mitsubishi_trajectories_APregions.png" width="500x"> 
</p>

**Note:** This script only extracts the trajectories from the saved rosbages and converts them to the robot's reference frame. Segmentation of individual goal-oriented sub-tasks is performed in the repo [dsltl](https://github.com/yanweiw/dsltl) which is still under development/in preparation for submission.

### Household Tasks
#### Cooking preparation task 
This task involves scooping and mixing ingredients from bowls. The script ``franka_cooking_process_rosbags.m``loads the rosbags recorded by tracking the end-effector for the franka emika panda during kinesthetic demonstrations as shown below:

<p align="center">
	<img src="https://github.com/nbfigueroa/easy-kinesthetic-recording/blob/latest-franka/img/scooping_task_reduced.gif" width="375x">
<!-- 	<img src="https://github.com/nbfigueroa/easy-kinesthetic-recording/blob/latest-franka/img/scooping_recording.gif" width="400x">  -->
	<img src="https://github.com/nbfigueroa/easy-kinesthetic-recording/blob/latest-franka/img/scooping_rosbag_replay.gif" width="400x">
</p>

This kinesthetic teaching example is documented in the [franka_interactive_controllers](https://github.com/nbfigueroa/franka_interactive_controllers/blob/main/doc/instructions/kinesthetic_teaching_recording.md) package or the [easy-kinesthetic-recording](https://github.com/nbfigueroa/easy-kinesthetic-recording) package on the ``latest-franka`` branch.

<p align="center">
  <img src="https://github.com/nbfigueroa/rosbag_to_mat/blob/main/figs/franka-cooking-multistep.png" width="500x"> 
</p>
 
**Note:** This script only extracts the trajectories and converts them to the robot's reference frame. 

**Trajectory Segmentation** of individual goal-oriented sub-tasks as shown below: 


cannot be performed by tracking the gripper state. In this case an alternative state-change segmentation algorothm is necessary. Such an approach is in under development/in preparation for submission -- this can be found in the repo [dsltl](https://github.com/yanweiw/dsltl).

#### Table setting task 
Involves grasping plates/cutlery from dish rack and placing it on a table. The script ``franka_tablesetting_process_rosbags.m``loads the rosbags recorded by tracking the end-effector for the franka emika panda during kinesthetic demonstrations as shown in the kinesthetic teaching example with the  [franka_interactive_controllers](https://github.com/nbfigueroa/franka_interactive_controllers/blob/main/doc/instructions/kinesthetic_teaching_recording.md) package or the [easy-kinesthetic-recording](https://github.com/nbfigueroa/easy-kinesthetic-recording) package on the ``latest-franka`` branch.

<p align="center">
  <img src="https://github.com/nbfigueroa/rosbag_to_mat/blob/main/figs/franka-tablesetting-multistep.png" width="500x"> 
</p>

**Gripper State-Based Trajectory Segmentation**
Since these continuous demonstrations involving a series of pick-and-place tasks we can automatically segment the trajectories into goal-oriented clusters based on the state of the of gripper and the object locations where the gripper grasped/released an object.

*To fill:...*

## Contact
[Nadia Figueroa](https://nbfigueroa.github.io/) (nadiafig AT seas dot upenn dot edu)


