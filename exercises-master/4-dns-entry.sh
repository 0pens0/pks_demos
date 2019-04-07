#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "ingress_lb=$(kubectl -l app=istio-ingressgateway get service -n istio-system  -o jsonpath={.items..status.loadBalancer.ingress..hostname})"
pe "echo $ingress_lb"
pe "nslookup $ingress_lb"
pe "sudo vim /etc/hosts"
pe "wget --ca-certificate cert-gen/bookinfo.com/2_intermediate/certs/ca-chain.cert.pem -S https://bookinfo.com/productpage 2>&1 | grep "HTTP/" | awk '{print $2}'"

