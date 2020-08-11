#!/bin/sh
cat /cron/crontab | sed -e 's/$/\ > \/proc\/1\/fd\/1 2> \/proc\/1\/fd\/2/' | crontab -
crontab -l && echo

handle_sigterm() { 
  kill -INT "$child" 2>/dev/null
}

trap handle_sigterm SIGTERM

crond -f &

child=$! 
wait "$child"

