#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl apply -f circuitbreaker/breaker.yaml"
pe "kubectl get destinationrule pp-circuit -o yaml"
pe "fortio load -c 3 -qps 0 -n 100 -loglevel Warning -k https://bookinfo.com/productpage"
pe "fortio load -c 6 -qps 0 -n 100 -loglevel Warning -k https://bookinfo.com/productpage"

