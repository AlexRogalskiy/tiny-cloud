#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/nodes.config
sshopts="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

for node in $armNodes; do
  ssh $sshopts $user@$prefix$node$suffix sudo fake-hwclock save &
done
