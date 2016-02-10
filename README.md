# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle


![Alt text](http://g.gravizo.com/g?
@startuml;
node nginx      <<docker container>> ;
node gitlab     <<docker container>> ;
node jenkins    <<docker container>> ;
node sonarqube  <<docker container>> ;
node nexus      <<docker container>> ;
node mariadb-gitlab     <<docker container>>;
node mariadb-gerrit     <<docker container>>;
node mariadb-sonarqube  <<docker container>>;

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
