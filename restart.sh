#!/bin/bash

source pid
kill $PID
java -jar /home/ubuntu/picalculatorwebservice-0.0.3-SNAPSHOT.jar > app.log &
PID=$!
echo export PID=$PID > pid
