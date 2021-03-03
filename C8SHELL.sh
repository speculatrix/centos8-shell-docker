#!/bin/bash

if [ ! -f Dockerfile ] ; then
	echo "Error, please run BUILDME.sh first"
	exit 1
fi

# detect the user chosen
MYUSERNAME=$( awk '/RUN useradd/ {print $7}' < Dockerfile )

echo "Starting a centos8 shell for user $MYUSERNAME with /home/$MYUSERNAME mapped in"

docker run -i -t -v /home:/home "centos8-shell-$MYUSERNAME"

