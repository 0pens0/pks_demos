
#!/bin/bash

kubectl delete -f bookinfo/bookinfo.yaml
kubectl delete -f egressrouting/egressgateway
kubectl delete -f egressrouting/egressrule
kubectl delete -f egressrouting/serviceentry
kubectl delete -f egressrouting/virtualservice 


kubectl delete -f circuitbreaker
kubectl delete -f trafficshifting

kubectl delete -f ingressrouting

kubectl delete secret istio-ingressgateway-certs -n istio-system
