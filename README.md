# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle

![Alt text](http://g.gravizo.com/g?
@startuml;
title devpaas docker container architecture;
node nginx <<docker container>> as nginx;
node gitlab <<docker container>> as scm;
node gerrit <<docker container>> as rwms;
node jenkins <<docker container>> as cis;
node sonarqube <<docker container>> as qms;
node nexus <<docker container>> as rms;
database mariadb_gitlab <<docker container>>;
database mariadb_gerrit <<docker container>>;
database mariadb_sonarqube <<docker container>>;
nginx -down-> scm;
scm -down-> mariadb_gitlab;
rwms -down-> mariadb_gerrit;
nginx -down-> cis;
nginx -down-> qms;
qms -down-> mariadb_sonarqube;
nginx -down-> rms;
@enduml
)
