#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="localadmin@ubuntu:~/ "

pe "vke account login -t 36f62bdc-17dc-4a30-8f84-77e78f510d01  -r 9884b2ed-56b1-4949-bdce-8fa5c1d277c2"
pe "vke folder set SharedFolder"
pe "vke project set SharedProject"
pe "vke cluster auth setup --folder SharedFolder --project SharedProject openso-sm-cluster"
