# keycloak

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 20.0.2](https://img.shields.io/badge/AppVersion-20.0.2-informational?style=flat-square)

A Helm chart for Keycloak

## Prerequisites

Get the TLS certificate for the domain name `k8s.localdev` and create a secret for it.

```bash
mkcert k8s.localdev "*.k8s.localdev"
```

```bash
kubectl create namespace keycloak
kubectl create secret tls -n keycloak ingress-certs \
  --cert ./k8s.localdev+1.pem \
  --key ./k8s.localdev+1-key.pem
```

## TL;DR
```console
$ helm repo add bhuwanupadhyay https://bhuwanupadhyay.github.io/helm-charts/
$ helm repo update
$ helm install keycloak bhuwanupadhyay/keycloak
```

## Installing the Chart
To install the chart with the release name `keycloak`:
```console
helm install keycloak bhuwanupadhyay/keycloak
```

## Uninstalling the Chart
To uninstall the `keycloak` deployment:
```console
helm uninstall keycloak
```
The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.
Other values may be used from the [values.yaml](../common/values.yaml) from the [common library](../common).

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,
```console
helm install keycloak \
  --set env.KC_PROXY="edge" \
    bhuwanupadhyay/keycloak
```

* Keycloak environment variables reference: https://www.keycloak.org/server/all-config

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart.
For example,
```console
helm install keycloak bhuwanupadhyay/keycloak -f values.yaml
```

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
