#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

export APP_PATH=$__root

###############################################################################

if [ ! -e $__root/ssh/ansible/id_rsa ]; then
    ssh-keygen -f $__root/ssh/ansible/id_rsa -N ''
    cp $__root/ssh/ansible/id_rsa.pub $__root/ssh/debian/authorized_keys
    cp $__root/ssh/ansible/id_rsa.pub $__root/ssh/centos/authorized_keys
fi;

docker-compose --file docker/dev.yml up --build

