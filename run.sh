#!/bin/bash
set -ex

# constants
IMAGE_NAME=docsify-served
HOST_PORT=3000

# argument defaults
HOST=localhost:3000
EXPOSE=3000
VERSION=latest
MOUNT=`pwd`/docs

# obtain input arguments to override defaults
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -h | --host )
    shift; HOST=$1
    ;;
  -e | --expose )
    shift; EXPOSE=$1
    ;;
  -m | --mount )
    shift; MOUNT=$1
    ;;
  -v | --version )
    shift; VERSION=$1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi

# build specific image locally
./build.sh -h $HOST -e $EXPOSE -i $IMAGE_NAME -v $VERSION;

HOST_PORT=${HOST##*:}

# run specified tagged image locally
(
  docker run -dp $HOST_PORT:$EXPOSE -v $MOUNT:/var/www $HOST/$IMAGE_NAME:$VERSION;
)
