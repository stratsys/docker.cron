#!/bin/sh
cat /cron/crontab | sed -e 's/$/\ > \/proc\/1\/fd\/1 2> \/proc\/1\/fd\/2/' | crontab -
chmod +x /cron/*
crontab -l && echo

crond -f
