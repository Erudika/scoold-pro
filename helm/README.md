# Scoold Pro Helm Chart for Kubernetes

[Scoold Pro](https://scoold.com) is a Q&A platform inspired by Stack Overflow.

## Introduction

This chart bootstraps a [Scoold Pro](https://github.com/Erudika/scoold-pro) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

This chart **does not** install Para next to Scoold in the K8s cluster. There is a separate [Helm chart for Para](https://github.com/Erudika/para/tree/master/helm).
We also offer a fully managed Para service at [ParaIO.com](https://paraio.com)

## Prerequisites

- Para backend service (latest version recommended; [Helm chart](https://github.com/Erudika/para/tree/master/helm))
- Access to the private Scoold Pro Docker registry on ECR
- Helm 3.0+
- Kubernetes 1.21+ (for the optional CronJob helper)

## Quick Start

First of all, make sure you have followed the [guide to get access to the private Docker registry on ECR here.](https://github.com/Erudika/scoold/?tab=readme-ov-file#docker-registry-for-scoold-pro-images)
Access to the private Docker registry can be requested by emailing support, after you purchase a Scoold Pro license.

In the `./helm/` directory of this repo, execute the following console command:

```console
$ helm install scooldpro ./scoold
```

The command deploys Scoold on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `scoold` deployment:

```console
$ helm uninstall scooldpro
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Scoold chart and their default values.

| Parameter                           | Description                                                   | Default                                                  |
|-------------------------------------|---------------------------------------------------------------|----------------------------------------------------------|
| `image.repository`                  | Scoold image name                                             | `374874639893.dkr.ecr.eu-west-1.amazonaws.com/scoold-pro`|
| `image.tag`                         | Scoold image tag                                              | `1.65.0`                                                 |
| `image.pullPolicy`                  | Image pull policy                                             | `IfNotPresent`                                           |
| `image.pullSecrets`                 | References to image pull secrets                              | `[]`                                                     |
| `service.type`                      | Kubernetes Service type                                       | `ClusterIP`                                              |
| `service.port`                      | Service HTTP port                                             | `8000`                                                   |
| `service.name`                      | Service port name                                             | `http`                                                   |
| `applicationConf`                   | Scoold configuration                                          | Sample block in `values.yaml`                            |
| `persistentVolumes.uploads.size`       | Requested capacity for `/scoold/uploads` PVC               | `2Gi`                                                    |
| `persistentVolumes.uploads.accessModes`| Access modes for `/scoold/uploads` PVC                     | `[ReadWriteOnce]`                                        |
| `persistentVolumes.uploads.storageClassName` | StorageClass for `/scoold/uploads` PVC               | `""`                                                     |
| `javaOpts`                          | `JAVA_OPTS` JVM arguments                                     | `-Xmx512m -Xms512m -Dconfig.file=/scoold/config/application.conf` |
| `podAnnotations`                    | Pod annotations                                               | `{}`                                                     |
| `extraEnvs`                         | Extra environment variables                                   | `[]`                                                     |
| `updateStrategy`                    | Deployment update strategy                                    | `RollingUpdate`                                          |
| `ingress.enabled`                   | Create Ingress                                                | `false`                                                  |
| `ingress.className`                 | Ingress class name                                            | `""`                                                     |
| `ingress.hosts[0].host`             | Hostname for the Ingress                                      | `scooldpro.local`                                        |
| `ingress.hosts[0].paths[0].path`    | HTTP path served by the Ingress                               | `/`                                                      |
| `ingress.tls`                       | TLS configuration                                             | `[]`                                                     |
| `resources`                         | CPU/Memory resource requests/limits                           | `{}`                                                     |
| `nodeSelector`                      | Node selector                                                 | `{}`                                                     |
| `tolerations`                       | Tolerations                                                   | `[]`                                                     |
| `affinity`                          | Affinity rules                                                | `{}`                                                     |
| `ecrHelper.enabled`                 | Enable the optional ECR credential helper                     | `true`                                                   |

For more information please refer to the [Scoold README](https://github.com/Erudika/scoold/blob/master/README.md).

A YAML file that specifies the values for the above parameters can be provided while installing the chart. For example,

```console
$ helm install scooldpro ./scoold -f values.yaml
```

> **Tip**: You can use the default [values.yaml](values.yaml)
