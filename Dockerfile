#Creating Images for Rundeck 
FROM jamesarems/rundeck:latest
MAINTAINER James PS <jamesarems@gmail.com>

#Running important commands
RUN apt-get update
RUN rm -rf /usr/start.sh
COPY ./start.sh /usr/start.sh
RUN chmod +x /usr/start.sh

#Exposing tcp ports
EXPOSE 4440/tcp
EXPOSE 4443/tcp
EXPOSE 22/tcp

#Adding volume
VOLUME /var/rundeck/
VOLUME /etc/rundeck/

#Running final script
ENTRYPOINT ["/usr/start.sh"]