#! /bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
    then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

repositoryName=111388063828.dkr.ecr.eu-central-1.amazonaws.com/mainapp
imageFullName=$repositoryName:$imageTag

echo [Main app STARTING] pushing image $imageFullName...

echo [Main app] pushing image...
docker push $imageFullName

echo [Main app FINISHED] image $imageFullName pushed