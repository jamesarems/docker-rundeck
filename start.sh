#!/bin/bash
##Rundeck configuration
#Starting basic services
service ssh restart

#Mapping volume
cp -rf /rundeck/etc/* /etc/rundeck/
cp -rf /rundeck/var/* /var/rundeck/
cp -rf /rundeck/lib/* /var/lib/rundeck/

#Giving permissions
chown -R rundeck:rundeck /etc/rundeck
chown -R rundeck:rundeck /var/rundeck
chown -R rundeck:rundeck /var/lib/rundeck
chown -R root:root /etc/rundeck/ssl

#Adding cron job
crontab -l > runcron
echo "05 * * * * /bin/bash /opt/run.sh" >> runcron
crontab runcron
rm -rf runcron

#Starting Rundeck Service
service rundeckd start


#Loggins message
tail -f /var/log/rundeck/rundeck.log
