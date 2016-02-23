#!/bin/sh

########################################################################
#
# title:          Stop && Delete Docker Containers and Images
# author:         Marco Maccio (https://marmac.name)
# url:            https://github.com/marcomaccio/docker-devpaas
# description:    Stop & Delete Docker Containers & Docker Images
#
# to run:         sh stop-delete.sh solutionName
#
########################################################################

# Stop all the docker container instances of the solutionName
docker stop $1_nginx_1 && docker stop $1_cis_1 && docker stop $1_cis-dv_1

# Delete all the docker container instances
docker rm $1_nginx_1 && docker rm $1_cis_1 && docker rm $1_cis-dv_1

# Delete all the docker images
docker rmi $1_nginx && docker rmi $1_cis
