#! /bin/bash

# Author : 2LT Nathan Jenkins
# This is for the host. Make sure you specify the same ip address for the helper script.
mkdir -p data/db

echo "Which ip address is hosting the db?"
read host_address
echo "Which .json file has the database you are importing?"
read file_address
echo 'Thank you. For your confirmation, file '${file_address} 'is being imported to the database hosted at '${host_address}
#mongoimport --host='${host_address}' --db='dbtest' --collection='testing' --file='testingMongo.json'
#echo 'checkpoint'
mongoimport --host=${host_address} --db='bgp_db' --collection='known_bgp' --file=${file_address}
