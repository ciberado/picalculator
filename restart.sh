#!/bin/bash

source /home/ec2-user/pid
kill $PID
java -jar /home/ec2-user/picalculatorwebservice-0.0.3-SNAPSHOT.jar > app.log &
PID=$!
echo export PID=$PID > /home/ec2-user/pid
