# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle


![Alt text](http://g.gravizo.com/g?
@startuml;
title devpaas container architecture

[nginx];
[gitlab];
[jenkins];
[sonarqube];
[nexus];
[mariadb-gitlab];
[mariadb-gerrit];
[mariadb-sonarqube];

[nginx] -> [gitlab];
[gitlab] -> [mariadb-gitlab];
[nginx] -> [jenkins];
[nginx] -> [sonarqube];
[sonarqube] -> [mariadb-sonarqube];
[nginx] -> [nexus];

@enduml
)
