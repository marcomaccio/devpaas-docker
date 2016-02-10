# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle


![Alt text](http://g.gravizo.com/g?
@startuml;
node nginx;
node gitlab;
node jenkins;
node sonarqube;
node nexus;
node mariadb-gitlab;
node mariadb-gerrit;
node mariadb-sonarqube;

nginx -> gitlab;
gitlab -> mariadb-gitlab;
nginx -> jenkins;
nginx -> sonarqube;
sonarqube -> mariadb-sonarqube;
nginx -> nexus;

skinparam node {
	borderColor White
	backgroundColor Blue
	backgroundColor<<docker container>> White
}
@enduml
)
