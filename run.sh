#!/bin/bash
##Rundeck
#Resetting permissions


chown -R rundeck:rundeck /etc/rundeck
chown -R rundeck:rundeck /var/rundeck
chown -R rundeck:rundeck /var/lib/rundeck
chown -R root:root /etc/rundeck/ssl
