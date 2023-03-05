#!/bin/bash

# build image
build_image="$(docker build -t item-app:v1 .)"
echo ${build_image}
echo "\n"

# check list images
check_images="$(docker images)"
echo ${check_images}
echo "\n"

# change name image for adjustment with repository name
change_image_name="$(docker tag item-app:v1 hendpermana/item-app:v1)"
echo ${change_image_name}
echo "\n"

# check list images
echo ${check_images}
echo "\n"

# login docker hub and password not include in here but used variable exclude
login_docker_hub="$(echo $PASSWORD_DOCKER_HUB | docker login -u hendpermana --password-stdin)"
echo ${login_docker_hub}
echo "\n"

# push my image to docker hub
docker_push="$(docker push hendpermana/item-app:v1)"
echo ${docker_push}
echo "\n"
