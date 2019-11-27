#!/bin/bash

echo "`date` shutting down previous server." >> /home/ec2-user/restart.log
curl -X POST localhost:8080/shutdown > /dev/null 2>&1
sleep 10
echo "`date` starting new server." >> /home/ec2-user/restart.log
java -jar /home/ec2-user/picalculatorwebservice-0.0.3-SNAPSHOT.jar &
echo "`date` server started." >> /home/ec2-user/restart.log
