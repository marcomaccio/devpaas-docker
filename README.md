# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle

![Alt text](http://g.gravizo.com/g?
  digraph G {
    aize ="4,4";
    nginx [shape=box];
    nginx -> gitlab [shape=box];
    nginx -> gerrit [shape=box];
    nginx -> jenkins [shape=box];
    nginx -> sonarqube [shape=box];
    nginx -> nexus [shape=box];
    gitlab -> mariadb-gitlab [shape=box];
    gerrit -> mariadb-gerrit [shape=box];
    sonarqube -> mariadb-sonarqube [shape=box];
  }
)
