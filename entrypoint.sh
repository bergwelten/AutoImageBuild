#!/bin/bash

set -e

HANS_HOST=${HANS_HOST:-pimpi}
HANS_PORT=${HANS_PORT:-65000}

sed -i -r 's|(remote_host =)(.*)|\1 '${HANS_HOST}'|' /app.conf
sed -i -r 's|(remote_port =)(.*)|\1 '${HANS_PORT}'|' /app.conf

if [ "${1:0:1}" == '-' ]
 then
  set -- app.sh "$@"
fi

exec "$@"
