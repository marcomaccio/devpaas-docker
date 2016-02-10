# docker-devpaas
A Development PAAS with Docker

This is a repository for creating a development paas with docker compose.

#GOALS:
Create an infrastructure to manage the Development Life cycle

![Alt text](http://g.gravizo.com/g?
@startuml;
actor User;
participant "First Class" as A;
participant "Second Class" as B;
participant "Last Class" as C;
User -> A: DoWork;
activate A;
A -> B: Create Request;
activate B;
B -> C: DoWork;
activate C;
C --> B: WorkDone;
destroy C;
B --> A: Request Created;
deactivate B;
A --> User: Done;
deactivate A;
@enduml
)

![Alt text](http://g.gravizo.com/g?
@startuml;
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

![Alt text](http://g.gravizo.com/g?
@startuml;
node nginx <<docker container>> as nginx;
node gitlab <<docker container>> as scm;
node gerrit <<docker container>> as rwms;
node jenkins <<docker container>> as cis;
node sonarqube <<docker container>> as qms;
node nexus <<docker container>> as rms;
database mariadb_gitlab;
database mariadb_gerrit;
database mariadb_sonarqube;
nginx -> scm;
scm -> mariadb-gitlab;
rwms -> mariadb-gerrit;
nginx -> cis;
nginx -> qms;
qms -> mariadb-sonarqube;
nginx -> rms;
@enduml
)
