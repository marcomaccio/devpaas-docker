FROM jenkins

MAINTAINER Marco Maccio <marco.maccio@marmac.name>

ENV REFRESHED_AT 2016-01-23

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

# Jenkins Settings, i.e. Maven, Groovy, ...
COPY config/hudson.tasks.Maven.xml /usr/share/jenkins/ref/hudson.tasks.Maven.xml
COPY config/hudson.plugins.groovy.Groovy.xml /usr/share/jenkins/ref/hudson.plugins.groovy.Groovy.xml

# COPY config/maven-global-settings-files.xml /usr/share/jenkins/ref/maven-global-settings-files.xml
COPY config/maven-settings-files.xml /usr/share/jenkins/ref/maven-settings-files.xml

# SSH Keys & Credentials
COPY config/credentials.xml /usr/share/jenkins/ref/credentials.xml

COPY config/config.xml /usr/share/jenkins/ref/config.xml

ENV JENKINS_OPTS --prefix=/jenkins
