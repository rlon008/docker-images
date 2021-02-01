FROM jenkins/jenkins:lts
COPY plugins.txt .

RUN /usr/local/bin/install-plugins.sh $(cat plugins.txt)