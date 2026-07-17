#!/bin/bash
cd /home/ubuntu/backend
npm start > /var/log/backend.log 2>&1 &
disown
exit 1