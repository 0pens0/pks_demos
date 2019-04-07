#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "cat trafficshifting/destinationrule.yaml"
pe "kubectl apply -f trafficshifting/destinationrule.yaml"
pe "echo Shift Everything to v1"
pe "kubectl apply -f trafficshifting/shifting-100-v1.yaml"
pe "echo Shift Everything to v2"
pe "kubectl apply -f trafficshifting/shifting-100-v2.yaml"
pe "echo Split traffic 20-80"
pe "cat trafficshifting/shifting-20-v2-80-v1.yaml"
pe "kubectl apply -f trafficshifting/shifting-20-v2-80-v1.yaml"
pe "echo shift only Jason traffic to v3"
pe "kubectl apply -f trafficshifting/destinationrule-jason.yaml"
pe "kubectl apply -f trafficshifting/shifting-jason.yaml"
pe "echo Clean shifting rules"
pe "kubectl apply -f trafficshifting/shifting-clean.yaml"
