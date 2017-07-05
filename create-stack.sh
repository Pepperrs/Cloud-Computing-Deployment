#!/bin/bash

# Check parameters
test $# = 1 || { echo "Need 1 parameter: Name of the stack to create"; exit 1; }
STACK="$1"

# Create the stack using server-landscape.yaml and defining all necessary parameters
#[[TODO]]
# server-landscape.yaml params: <external net/key_pair/flavor/image/zone>
# server.yaml params <name/key_pair/flavour/image/network/zone/security_groups/init_code>

./cc-openstack stack create $STACK -t server-landscape.yaml \
  --parameter external_net=tu-internal \
  --parameter key_pair=keywithoutpassphrase \
  --parameter flavor="Cloud Computing" \
  --parameter image=ubuntu-16.04 \
  --parameter zone="Cloud Computing 2017" \
  --wait

