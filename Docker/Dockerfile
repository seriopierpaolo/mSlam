FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04

RUN apt update &&\
    apt upgrade &&\
    apt install -y sudo \
    git \ 
    wget 

RUN mkdir ros2_ws



#install ROS2

RUN apt update && sudo apt install -y locales
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN export LANG=en_US.UTF-8

RUN apt install -y software-properties-common
RUN add-apt-repository universe

RUN apt update && sudo apt install curl -y &&\
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

#this command needs keyboard input!
RUN apt update && sudo apt install -y ros-dev-tools &&\
    apt install -y ros-iron-desktop

#install YOLO8
RUN cd ros2_ws/src &&\
    git clone https://github.com/mgonzs13/yolov8_ros.git &&\
    apt install python3-pip &&\
    pip3 install -r yolov8_ros/requirements.txt

RUN cd .. &&\
source /opt/ros/iron/setup.sh &&\
rosdep init &&\
rosdep install --from-paths src --ignore-src -r -y &&\
 
