#!/usr/bin/env bash
k() {
    kubectl -n kube-logging "$@"
}

k delete svc fluentd
k delete deploy fluentd
