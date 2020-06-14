#!/bin/bash
set -ex

# constants
PWD=./stable

# argument defaults
HOST=localhost:3000
EXPOSE=3000
VERSION=latest
IMAGE_NAME=docsify-served

# obtain input arguments to override defaults
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -h | --host )
    shift; HOST=$1
    ;;
  -e | --expose )
    shift; EXPOSE=$1
    ;;
  -i | --image-name )
    shift; IMAGE_NAME=$1
    ;;
  -v | --version )
    shift; VERSION=$1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi

# switch to latest version
if [[ $VERSION == 'latest' ]]; then PWD=./latest; fi

# build specified image with a tag
(
  docker build --rm=true -f $PWD/Dockerfile --build-arg DEFAULT_EXPOSE=$EXPOSE --build-arg DEFAULT_CLI_VERSION=$VERSION -t $HOST/$IMAGE_NAME:$VERSION .;
)
