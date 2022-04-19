#!/bin/bash
usage() {
  cat <<EOF
NAME
    ${0##*/} Build docker artifact and push to dockerhub
SYNOPSIS
    ${0##*/} IMAGE_VERSION
Options:
    For example:
        ./build.sh latest
RETURN CODES
    Returns 0 on success, 1 if an error occurs.
EOF
}

if [ $# != 1 ];
then
    usage
    exit 1
else
    docker build -t rlon008/docker-firebase-cli:$1 .
    docker push rlon008/docker-firebase-cli:$1
fi



