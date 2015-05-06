FROM jenkins
MAINTAINER Henrik Hoegh <heh@praqma.net>
COPY jenkins.war /usr/share/jenkins/
USER jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
