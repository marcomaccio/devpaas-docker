#!/bin/sh

########################################################################
#
# title:          Stop && Delete Docker Containers and Images
# author:         Marco Maccio (https://marmac.name)
# url:            https://github.com/marcomaccio/docker-devpaas
# description:    Stop & Delete Docker Containers & Docker Images
#
# to run:         sh 3_delete-containers.sh solutionName
#
########################################################################

# Delete all the docker images
docker rmi $1_nginx && docker rmi $1_cis && docker rmi $1_logspout && docker rmi $1_elk
