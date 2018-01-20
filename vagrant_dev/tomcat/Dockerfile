FROM tomcat:8.5-alpine

LABEL author=oceanebelle

VOLUME /mnt/tomcat/apps
VOLUME /mnt/tomcat/conf


#SET CATALINE_HOME and PATH
ENV CATALINA_HOME /usr/local/tomcat
ENV JMX true
ENV JMX_PORT 1099
ENV JMX_HOSTNAME 127.0.0.1
ENV DEBUG_PORT 8000
ENV MAXMEM 768m
ENV PATH $PATH:$CATALINA_HOME/bin

ADD server.xml ${CATALINA_HOME}/conf/
ADD setenv.sh $CATALINA_HOME/bin/
RUN chmod +x $CATALINA_HOME/bin/setenv.sh

EXPOSE 8080 8005 8009 9999 8000

CMD ["catalina.sh", "run"]