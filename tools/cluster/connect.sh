#!/bin/sh

kubectl port-forward -n wuda deploy/wuda-frontend 8000:8000 &
kubectl port-forward -n wuda deploy/wuda-backend 5000:5000