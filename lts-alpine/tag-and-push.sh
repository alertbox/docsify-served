#!/bin/bash
trap 'exit' ERR
for tag in {latest,preview,lts-alpine,docsify-cli-latest}; do 
  docker tag localhost:3000/whale-docsify-serve alertbox/whale-docsify-serve:${tag}
  docker push alertbox/whale-docsify-serve:${tag}
done