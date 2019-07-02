# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "Ranganath" 
COPY ./webapp.war /usr/local/tomcat/webapps
