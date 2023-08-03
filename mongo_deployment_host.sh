#! /bin/bash

# Author : 2LT Nathan Jenkins
# This is for the host. Make sure you specify the same ip address for the helper script.
mkdir -p data/db

echo "Which ip address do you want to host the db on? Here are the system ip addresses I have found:"
hostname -i
echo "(type the ip address below)"
read host_address
echo 'Thank you. For your confirmation, the server is now starting on '${host_address}
#mongoimport --host='${host_address}' --db='dbtest' --collection='testing' --file='testingMongo.json'
#echo 'checkpoint'
mongod --quiet --bind_ip ${host_address}
