FROM tomcat:9.0-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ProductApp-render.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
COPY server.xml /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]
