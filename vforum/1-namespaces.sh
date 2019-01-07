#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl get namespaces"
pe "kubectl create ns yelb"
pe "kubectl get ns"
#pe "cat no-nat-namespace.yaml"
#pe "kubectl create -f no-nat-namespace.yaml"

