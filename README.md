# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle


![Alt text](http://g.gravizo.com/g?
@startuml;
node nginx      <<docker container>> as nginx;
node gitlab     <<docker container>> as code;
node jenkins    <<docker container>> as cis;
node sonarqube  <<docker container>> as qms;
node nexus      <<docker container>> as rms;
node mariadb-gitlab     <<docker container>>;
node mariadb-gerrit     <<docker container>>;
node mariadb-sonarqube  <<docker container>>;

nginx -> code;
nginx -> cis;
nginx -> qms;
nginx -> rms;

skinparam node {
	borderColor White
	backgroundColor Blue
	backgroundColor<<docker container>> White
}
@enduml
)
