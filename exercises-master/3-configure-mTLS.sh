#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "kubectl create -n istio-system secret tls istio-ingressgateway-certs --key cert-gen/bookinfo.com/3_application/private/bookinfo.com.key.pem --cert cert-gen/bookinfo.com/3_application/certs/bookinfo.com.cert.pem"
pe "kubectl apply -f ingressrouting/bookinfo-gateway-tls.yaml"
pe "kubectl exec -it -n istio-system $(kubectl -n istio-system get pods -l istio=ingressgateway -o jsonpath='{.items[0].metadata.name}') -- ls -al /etc/istio/ingressgateway-certs"
pe "cat ingressrouting/bookinfo-igw-routing.yaml"
pe "kubectl apply -f ingressrouting/bookinfo-igw-routing.yaml"

