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
docker stop devpaas_nginx_1 &&      \\
  docker stop devpaas_cis_1 &&      \\
  docker stop devpaas_cis-dv_1 &&   \\
  docker stop devpaas_graphite_1 && \\
  docker stop devpaas_elk_1 &&      \\
  docker stop devpaas_logspout_1

# Delete all the docker container instances
#docker rm $1_nginx_1 && docker rm $1_cis_1 && docker rm $1_cis-dv_1

# Delete all the docker images
#docker rmi $1_nginx && docker rmi $1_cis
