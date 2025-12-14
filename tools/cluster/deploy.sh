#!/bin/sh

helm upgrade --install wuda helm/wuda \
             --namespace wuda \
             --create-namespace \
             -f ./kind/values.yaml
