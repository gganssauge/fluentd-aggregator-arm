#!/usr/bin/env bash
bash create-config.sh
kubectl -n kube-system apply -f fluentd.deployment.yml
kubectl -n kube-system apply -f fluentd.service.yml
