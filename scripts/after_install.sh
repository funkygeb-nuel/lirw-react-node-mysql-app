#!/bin/bash
apt-get install -y mysql-client
cd /home/ubuntu/backend
npm install
mysql -h mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com \
  -u admin \
  -pFunky2429 \
  --connect-timeout=10 \
  -e "CREATE DATABASE IF NOT EXISTS react_node_app;" 2>&1
exit 0