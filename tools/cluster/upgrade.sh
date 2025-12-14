#!/bin/sh

helm upgrade --install wuda helm/wuda \
             -n wuda \
             -f ./kind/values.yaml