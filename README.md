# DOCKER-DEVPAAS
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

## GOALS:
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
node elk <<docker container>> as elk;
node logspout <<docker container>> as logspout;
database mariadb_gitlab <<docker container>>;
database mariadb_gerrit <<docker container>>;
database mariadb_sonarqube <<docker container>>;
nginx -down-> scm : http 80;
nginx -down-> rwms : http 8080;
scm -down-> mariadb_gitlab : tcp 3306;
rwms -down-> mariadb_gerrit;
nginx -down-> cis;
nginx -down-> qms;
qms -down-> mariadb_sonarqube;
nginx -down-> rms;
nginx --> logspout;
cis --> logspout;
scm --> logspout;
rwms --> logspout;
qms --> logspout;
rms --> logspout;
mariadb_gitlab --> logspout;
mariadb_gerrit --> logspout;
mariadb_sonarqube --> logspout;
logspout --> elk;
@enduml
)
