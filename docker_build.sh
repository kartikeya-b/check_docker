#!/bin/bash 
# MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>
# cat Dockerfile | sed "s/{{app_version}}/$1/" | 
sudo docker build -t tomcat-deploy .
sleep 20
sudo docker run --name tom -p 0.0.0.0:9080:8080 -d tomcat-deploy
