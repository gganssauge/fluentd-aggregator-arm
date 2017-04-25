#!/usr/bin/env bash
bash create-config.sh
kubectl apply -f fluentd.deployment.yml
kubectl apply -f fluentd.service.yml
