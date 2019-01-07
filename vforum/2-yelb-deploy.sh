#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "cat yelb-app-sc.yaml"
pe "kubectl create -f yelb-app-sc.yaml -n yelb"
pe "kubectl get sc"
pe "clear"
pe "cat yelb-app-pvc.yaml"
pe "kubectl create -f yelb-app-pvc.yaml -n yelb"
pe "watch kubectl get pvc -n yelb"
pe "cat yelb-app-v2.yaml"
pe "kubectl create -f yelb-app-v2.yaml -n yelb"
pe "clear"
pe "watch kubectl get po -n yelb -o wide"
pe "kubectl create -f yelb-app-LB.yaml -n yelb"
pe "watch kubectl get svc -n yelb" 
pe "watch kubectl get all -n yelb -o wide"
#pe "cat no-nat-namespace.yaml"
#pe "kubectl create -f no-nat-namespace.yaml"

