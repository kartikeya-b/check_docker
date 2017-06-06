#!/bin/bash 
# MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>
# cat Dockerfile | sed "s/{{app_version}}/$1/" | 
docker build -t tomcat-deploy .
sleep 20
docker run --name tom -p 0.0.0.0:9080:80 -d tomcat-deploy
