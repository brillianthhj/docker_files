docker run -itd --name dso_v2 --privileged \
		   --env="DISPLAY=$DISPLAY" \
		   --env="QT_X11_NO_MITSHM=1" \
		   --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
		   --volume="/home/lily/Projects/dso2:/root/dso" \
		   dso:1.0 /bin/bash
