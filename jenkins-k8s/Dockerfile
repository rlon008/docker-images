FROM jenkins/jenkins:2.319.1-lts
COPY plugins.txt .
USER root
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
USER jenkins
RUN /usr/local/bin/install-plugins.sh $(cat plugins.txt)