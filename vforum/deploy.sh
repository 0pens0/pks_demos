#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "./0-pks-create.sh"
pe "./1-namespaces.sh"
pe "./2-yelb-deploy.sh"
#pe "cat no-nat-namespace.yaml"
#pe "kubectl create -f no-nat-namespace.yaml"

