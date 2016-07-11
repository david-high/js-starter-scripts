#!/bin/bash

#   MIT License
#   Copyright (c) [2016] [David High]

#   basic shell script to install
#   express-generator and mongodb
#   in a new cloud 9 node.js project

npm install express-generator -g

npm install mongodb

mkdir data
echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"' > mongod
chmod a+x mongod

# start mongodb with ./mongod
