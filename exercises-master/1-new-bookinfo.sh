#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl label namespace --overwrite default istio-injection=enabled"
pe "kubectl describe namespace default"
pe "kubectl apply -f bookinfo/bookinfo.yaml"
pe "watch kubectl get pods"

