#!/bin/bash

curl -X POST localhost:8080/shutdown
sleep 10
java -jar /home/ec2-user/picalculatorwebservice-0.0.3-SNAPSHOT.jar > /home/ec2-user/app.log &
