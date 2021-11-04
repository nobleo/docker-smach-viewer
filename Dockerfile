FROM ros:melodic

# Install required packages
RUN apt update && apt install -y \
    ros-melodic-executive-smach-visualization \
    ros-melodic-smach-ros \
    ros-melodic-smach-msgs \
    python-wxgtk3.0 \
    graphviz \
    python-gi \
    python-gi-cairo \
    python-pyqt5 \
    ros-melodic-qt-gui \
    ros-melodic-python-qt-binding

# Startup command to run smach_viewer
CMD . /opt/ros/melodic/setup.sh && rosrun smach_viewer smach_viewer.py
