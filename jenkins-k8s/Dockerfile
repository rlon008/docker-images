FROM jenkins/jenkins:2.289.3-lts
COPY plugins.txt .

RUN /usr/local/bin/install-plugins.sh $(cat plugins.txt)