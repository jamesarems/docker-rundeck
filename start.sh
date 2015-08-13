#!/bin/bash
##Rundeck configuration
#Starting basic services
service ssh restart

#Mapping volume
cp -rf /rundeck/etc/* /etc/rundeck/
cp -rf /rundeck/var/* /var/rundeck/
cp -rf /rundeck/lib/* /var/lib/rundeck/

#Starting Rundeck Service
service rundeckd start


#Loggins message
tail -f /var/log/rundeck/rundeck.log
