#!/bin/bash

# Create backup in case something goes wrong while generating new crontab
crontab -l > /tmp/backup.cron

env > /tmp/crontab;
cat .env >> /tmp/crontab;
cat ./crontab >> /tmp/crontab;

crontab -u $USER /tmp/crontab;
