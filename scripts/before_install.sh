#!/bin/bash
# Remove existing files so CodeDeploy can deploy fresh
rm -rf /var/www/html/*
rm -rf /home/ubuntu/backend
mkdir -p /var/www/html
mkdir -p /home/ubuntu/backend
chmod 755 /var/www/html
chmod 755 /home/ubuntu/backend 