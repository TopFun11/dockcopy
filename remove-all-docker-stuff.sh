#!/bin/bash


read -p "Are you sure? This will remove ALL docker images, containers, etc. Even running ones.`echo $'\n> '`" -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Stop any running containers
    sudo docker stop $(sudo docker ps -a -q)
    #https://github.com/docker/docker/issues/928#issuecomment-23538307
    # Delete all containers
    sudo docker rm $(sudo docker ps -a -q)
    # Delete all images
    # Optional sudo docker rmi $(sudo docker images -q)
    echo "Hasta la vista baby"
fi
