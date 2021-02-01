## Description
A Jenkins image with pre-installed plugins as per plugins.txt.
This allow you to start plugin quickly.  It can be used in combination with helm to install jenkins on k8s.

e.g:
Run the following to install jenkins into k8s
`
helm repo add jenkins https://charts.jenkins.io
helm install jenkins jenkins/jenkins -f custom-values.yaml
`
Where custom-values.yaml:

`
controller:
  image: "rlon008/jenkins-k8s"
  tag: "latest"
  installPlugins:[]
`


## Build
1. RUN `docker login`
2. RUN `./build.sh <version>` e.g. `./build.sh latest`