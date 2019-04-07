#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "PR_POD=$(kubectl get pod -l app=productpage -o jsonpath={.items..metadata.name})"
pe "istioctl authn tls-check ${PR_POD} productpage.default.svc.cluster.local"

