#!/bin/sh
echo ">>>>  Waiting 5000 port to be running<<<<"
# use while loop to check if flask is running 
while true
do
    netstat -uplnt | grep :5000 | grep LISTEN > /dev/null
    verifier=$?
    if [ 0 = $verifier ]
        then
            echo "Creating DB"
            flask create-db
            echo "DB has been created"
            break
        else
            echo "Flask is not running yet"
            sleep 5
    fi
done