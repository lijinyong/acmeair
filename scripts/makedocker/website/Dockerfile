FROM tomcat:8.5-jre8

RUN rm -r /usr/local/tomcat/webapps/ROOT

COPY ./ROOT.war /usr/local/tomcat/webapps/


CMD ["catalina.sh", "run"]
