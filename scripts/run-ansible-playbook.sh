#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

. $__root/scripts/colors.sh

export APP_PATH=$__root

###############################################################################

docker exec -t --workdir /playbook \
    ansible-test-ansible \
    ansible-playbook site.yml -i hosts &&
echo "" &&
echo "" &&
green "----------------------------------------------------------------------" &&
green "Ansible complete" &&
blue "Centos: http://localhost:8081/index.php" &&
blue "Debian: http://localhost:8082/index.php" &&
green "----------------------------------------------------------------------" &&
echo ""
