FROM tomcat:8.5.13-jre8-alpine
MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>

WORKDIR /usr/local/tomcat
ADD http://172.16.3.2:9053/nexus/content/repositories/releases/maven-sonar.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
RUN rm -rf /usr/local/tomcat/webapps/ROOT && \
    mkdir -p /usr/local/tomcat/webapps/ROOT && \ 
	cd /usr/local/tomcat/webapps/ROOT && \
	unzip /usr/local/tomcat/webapps/maven-sonar.war  && \
	rm -rf /usr/local/tomcat/webapps/maven-sonar.war 
EXPOSE 9080
