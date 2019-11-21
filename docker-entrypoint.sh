#!/bin/sh
cat /cron/crontab | sed -e 's/$/\ > \/proc\/1\/fd\/1 2> \/proc\/1\/fd\/2/' | crontab -
crontab -l && echo

crond -f
