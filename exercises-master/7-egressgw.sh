#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl apply -f bookinfo/bookinfo-details-v2.yaml"
pe "kubectl get pod"
pe "kubectl apply -f egressrouting/virtualservice/details-v2.yaml"
pe "echo Traffic to Details-v1 Stoped"
pe "cat egressrouting/egressrule/destinationrule-details-v2.yaml"
pe "kubectl apply -f egressrouting/egressrule/destinationrule-details-v2.yaml"
pe "cat egressrouting/egressgateway/egress-gateway-for-google-tls.yaml"
pe "kubectl apply -f egressrouting/egressgateway/egress-gateway-for-google-tls.yaml"
pe "cat egressrouting/serviceentry/details-v2-tls.yaml"
pe "kubectl apply -f egressrouting/serviceentry/details-v2-tls.yaml"

