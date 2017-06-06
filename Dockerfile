FROM tomcat
MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>

WORKDIR /usr/local/tomcat
ADD http://172.16.3.2:9053/nexus/content/repositories/releases/maven-sonar.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

