# docker-rundeck
Rundeck docker

##Rundeck environment

To run this docker 

>docker pull jamesarems/rundeck

>docker run -privileged -d -p 4440:4440/tcp jamesarems/rundeck-latest

##For Advanced Users

To edit configurations and all , better you need to mount rundeck volumes to your host . For that,

>docker run -privileged -d -v /your/host/dir/:/var/rundeck -v /your/host/dir/:/etc/rundeck -p 22:22/tcp -p 4440:4440/tcp jamesarems/rundeck-latest

*Docker Link*

Link between other dockers. This is better option if you are using an SMTP server. Port 25 is already exposed.

## About

This docker is in beta stage. Please comment your suggestions. I will try to add more configurations.
