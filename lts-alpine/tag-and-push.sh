#!/bin/bash
trap 'exit' ERR
for tag in {latest,preview,lts-alpine,docsify-cli-latest}; do 
  docker tag localhost:3000/docsify-served alertbox/docsify-served:${tag}
  docker push alertbox/docsify-served:${tag}
done