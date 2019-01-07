#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl delete ns yelb"
pe "kubectl delete sc thin-disk"
#pe "cat no-nat-namespace.yaml"
#pe "kubectl create -f no-nat-namespace.yaml"

