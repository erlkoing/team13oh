#!/bin/bash

CH02=ch02_v2.yml

kubectl delete -f $CH02
kubectl delete -f secret/azure-secret.yaml
kubectl delete -f minecraft-monitoring.conf

sleep 5

kubectl create -f secret/azure-secret.yaml
kubectl create -f $CH02
kubectl create -f minecraft-monitoring.conf
