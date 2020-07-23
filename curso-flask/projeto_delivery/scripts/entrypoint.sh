#!/bin/sh
echo ">>>>  Starting database Script<<<"
# Database setting up script
sh ./scripts/database.sh &

echo ">>>>  Running FLASK<<"
# Starting flask
flask "run" 

#File has been separated because it is simple to manage and also because os break statement
#Please have a look on database.sh
###########################################################################################
# echo ">>>>  Waiting 5000 port to be running<<<<"
# # use while loop to check if flask is running 
# dbCreated="dbFalse"
# while [ "$dbCreated" = "dbFalse" ];
# do
#     netstat -uplnt | grep :5000 | grep LISTEN > /dev/null
#     verifier=$?
#     if [ 0 = $verifier ]
#         then
#             echo "Creating DB"
#             flask create-db
#             echo "DB has been created"
#             dbCreated=1
           
#         else
#             echo "Flask is not running yet"
#             sleep 5
#     fi
    
# done
