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
node nginx;
node gitlab;
[jenkins];
[sonarqube];
[nexus];
[mariadb-gitlab];
[mariadb-gerrit];
[mariadb-sonarqube];
nginx -> gitlab;
gitlab -> [mariadb-gitlab];
[nginx] -> [jenkins];
[nginx] -> [sonarqube];
[sonarqube] -> [mariadb-sonarqube];
[nginx] -> [nexus];
@enduml
)
