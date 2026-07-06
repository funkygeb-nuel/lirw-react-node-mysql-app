#!/bin/bash
cd /home/ubuntu/backend
npm install

# Create database and import schema
mysql -h mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com \
  -u admin \
  -pyour-actual-rds-password \
  -e "CREATE DATABASE IF NOT EXISTS react_node_app;"

mysql -h mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com \
  -u admin \
  -pyour-actual-rds-password \
  react_node_app < /home/ubuntu/backend/db.sql