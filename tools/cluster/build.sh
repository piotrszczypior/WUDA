#!/bin/sh

docker build -t wuda-frontend:local front-end
docker build -t wuda-backend:local back-end