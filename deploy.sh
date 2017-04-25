#!/usr/bin/env bash
namespace=kube-logging
k() {
    kubectl -n "${namespace}" "$@"
}

kubectl get namespace "${namespace}" >/dev/null 2>&1 || kubectl create namespace "${namespace}"
k delete configmap fluent.conf >/dev/null 2>&1 || true
k create configmap fluent.conf --from-file=fluent.conf
k apply -f fluentd.deployment.yml
k apply -f fluentd.service.yml
