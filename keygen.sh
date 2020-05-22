#! /usr/bin/env sh

CMD="ssh-keygen"
OPS="-o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C"
HOST=`hostname`
USER="$USER@$HOST"

echo "executing $CMD $OPS $USER"

`$CMD $OPS $USER`
