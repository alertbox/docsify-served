#!/bin/bash
set -ex

# constants
IMAGE_NAME=docsify-served
IMAGE=alertbox/$IMAGE_NAME

# argument defaults
HOST=localhost:3000
EXPOSE=3000
TAGS=(latest)

# obtain input arguments to override defaults
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -h | --host )
    shift; HOST=$1
    ;;
  -e | --expose )
    shift; EXPOSE=$1
    ;;
  -t | --tags )
    shift; TAGS=$1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi

# build specific images locally
for VERSION in ${TAGS[@]}; do 
  ./build.sh -h $HOST -e $EXPOSE -i $IMAGE_NAME -v $VERSION;
done

# create release tags
for VERSION in ${TAGS[@]}; do 
(
  docker tag $HOST/$IMAGE_NAME:$VERSION $IMAGE:$VERSION;
)
done

# ensure you are logged in, otherwise prompt to log in
(
  docker login;
)

# push specified tagged images to container registry
for VERSION in ${TAGS[@]}; do 
  (
    docker push $IMAGE:$VERSION
  )
done