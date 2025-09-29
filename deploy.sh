#!/bin/sh
USER=root
HOST=hirtlab
DIR=/container/caddy/data/www/whoami/   # the directory where your website files should go

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR} # this will delete everything on the server that's not in the local public directory 

exit 0