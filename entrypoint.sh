#!/bin/sh

if [ -z ${LOCAL_USER_ID+x} ]
then
  /bin/terraform $cmd "$@"
else
  adduser -D -h /home/user -s /bin/sh -u ${LOCAL_USER_ID} user
  export HOME=/home/user
  exec sudo -E -u user /bin/terraform $cmd "$@"
fi
