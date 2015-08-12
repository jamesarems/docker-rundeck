#!/bin/bash
##Rundeck configuration
#Starting basic services
service ssh restart

#Starting Rundeck Service
service rundeckd start
