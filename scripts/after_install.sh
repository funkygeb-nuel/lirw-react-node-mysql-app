#!/bin/bash
# Install MySQL client if not already installed
apt-get install -y mysql-client

# Install backend dependencies
cd /home/ubuntu/backend
npm install

# Create database and import schema
mysql -h mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com \
  -u admin \
  -p Funky2429 \
  -e "CREATE DATABASE IF NOT EXISTS react_node_app;"

mysql -h mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com \
  -u admin \
  -p Funky2429 \
  react_node_app < /home/ubuntu/backend/db.sql