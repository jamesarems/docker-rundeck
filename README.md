# docker-rundeck
Rundeck docker

##Rundeck environment

To run this docker 

>docker pull jamesarems/rundeck-latest

>docker run -privileged -d -p 4440:4440/tcp jamesarems/rundeck-latest

*Browse at 

> yourip:4440

##For Advanced Users

To edit configurations and all , better you need to mount rundeck volumes to your host . For that,

>docker run -privileged -d -v /rundeck/var/:/var/rundeck -v /rundeck/etc/:/etc/rundeck -p 722:22/tcp -p 4440:4440/tcp jamesarems/rundeck-latest

*Note : Here default ssh port from rundeck docker is 722 tcp port .

*You can edit rundeck configuration from host directory 

eg : Under /rundeck

#Available Volumes

/var/rundeck/

/var/lib/rundeck/

/etc/rundeck/

*Note : To restart rundeck service ,

>docker exec <container-id> service rundeckd restart

*Docker Link*

Link between other dockers. This is better option if you are using an SMTP server. Port 25 is already exposed.

## About

This docker is in beta stage. Please comment your suggestions. I will try to add more configurations.
