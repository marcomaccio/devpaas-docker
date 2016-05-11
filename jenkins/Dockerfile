FROM jenkins:1.651.1

MAINTAINER Marco Maccio <marco.maccio@marmac.name>

ENV REFRESHED_AT 2016-01-23

# installation via apt-get (root needed) of:
#    - graphviz
USER root
RUN apt-get update && apt-get install -y graphviz
USER jenkins
# drop back to the regular jenkins user - good practice

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

# Maven settings
COPY config/hudson.tasks.Maven.xml /usr/share/jenkins/ref/hudson.tasks.Maven.xml
# Groovy settings
COPY config/hudson.plugins.groovy.Groovy.xml /usr/share/jenkins/ref/hudson.plugins.groovy.Groovy.xml
# Jenkins Maven Global settings
#COPY config/maven-global-settings-files.xml /usr/share/jenkins/ref/maven-global-settings-files.xml
# Jenkins Maven File settings
COPY config/maven-settings-files.xml /usr/share/jenkins/ref/maven-settings-files.xml

# Credentials & SSH Keys
COPY config/credentials.xml /usr/share/jenkins/ref/credentials.xml

COPY config/config.xml /usr/share/jenkins/ref/config.xml

# ENV JENKINS_OPTS --prefix=/jenkins --httpPort=8090
# EXPOSE 8090

# Jenkins prefix for the servlet context this wil allow to reach jenkins
# at the following url: http://<docker-machine-ip:<port>/<prefix>
ENV JENKINS_OPTS --prefix=/jenkins
