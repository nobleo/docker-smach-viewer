# docker-smach-viewer

This dockerfile builds a docker image with ROS smach_viewer inside, based on ROS melodic.
This enables smach_viewer on noetic release for example

## Usage
Command to start smach_viewer and mount .ros/dotfiles directory to save .dot files:

```
xhost +SI:localuser:root &&
docker run -it --rm \
    --net=host \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v ~/.ros/dotfiles:/root/.ros/dotfiles \
    --device /dev/dri:/dev/dri \
    --ipc host \
    nobleo/smach_viewer
```

Hint: one could make an alias for this oneliner in .bashrc
```
alias smach_viewer_docker='xhost +SI:localuser:root
    docker run -it --rm \
        --net=host \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v ~/.ros/dotfiles:/root/.ros/dotfiles \
        --device /dev/dri:/dev/dri \
        --ipc host \
        nobleo/smach_viewer'
```
And then simply start the dockerized smach_viewer by typing:
````smach_viewer_docker````
