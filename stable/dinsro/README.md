# dinsro

![Version: 0.1.7](https://img.shields.io/badge/Version-0.1.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| database.enabled | bool | `false` | Deploy postgres backend |
| database.host | string | `"db"` |  |
| database.image.repository | string | `"postgres"` |  |
| database.image.version | float | `12.1` |  |
| database.name | string | `"dinsro"` |  |
| database.password | string | `"mysecretpassword"` | postgres password |
| database.persistence.size | string | `"1G"` |  |
| database.persistence.storageClass | string | `"local-path"` |  |
| database.seed | bool | `false` |  |
| database.service.port | int | `5432` |  |
| database.user | string | `"postgres"` | postgres username |
| devcards.devtools.enabled | bool | `true` | deploy devtools for devcards |
| devcards.devtools.ingress.enabled | bool | `true` | Enable ingress for devcards devtools |
| devcards.devtools.ingress.hosts[0].host | string | `"devtools.devcards.dinsro.localtest.me"` |  |
| devcards.devtools.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| devcards.devtools.service.port | int | `9630` | Port for devcards devtools ws |
| devcards.devtools.service.type | string | `"ClusterIP"` |  |
| devcards.enabled | bool | `true` | deploy devcards |
| devcards.ingress.enabled | bool | `true` |  |
| devcards.ingress.hosts[0].host | string | `"cards.dinsro.localtest.me"` |  |
| devcards.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| devcards.service.port | int | `7778` |  |
| devcards.service.type | string | `"ClusterIP"` |  |
| devtools.enabled | bool | `false` | Deploy Devtools |
| devtools.ingress.enabled | bool | `true` | Deploy Devtools ingress |
| devtools.ingress.hosts[0].host | string | `"devtools.dinsro.localtest.me"` |  |
| devtools.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| devtools.ingress.hosts[0].service | string | `"devtools"` |  |
| devtools.service.port | int | `9630` |  |
| devtools.service.type | string | `"ClusterIP"` |  |
| dinsroConfig | string | `"-"` |  |
| docs.enabled | bool | `false` | Deploy docs server |
| docs.ingress.enabled | bool | `true` |  |
| docs.ingress.hosts[0].host | string | `"docs.dinsro.localtest.me"` |  |
| docs.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| docs.service.port | int | `3000` |  |
| docs.service.type | string | `"ClusterIP"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"duck1123/dinsro"` |  |
| image.tag | string | `"latest"` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"dinsro.localtest.me"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| logLevel | string | `":info"` | base log level for dinsro |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| notebooks.enabled | bool | `false` | deploy notebooks |
| notebooks.ingress.enabled | bool | `true` | deploy notebooks ingress |
| notebooks.ingress.hosts[0].host | string | `"notebooks.dinsro.localtest.me"` |  |
| notebooks.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| notebooks.service.port | int | `3693` |  |
| notebooks.service.type | string | `"ClusterIP"` |  |
| nrepl.enabled | bool | `false` | enable nRepl connection |
| persistence.certs.enabled | bool | `true` |  |
| persistence.certs.size | string | `"1G"` |  |
| persistence.certs.storageClass | string | `"local-path"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.seed | bool | `false` |  |
| persistence.size | string | `"1G"` |  |
| persistence.storageClass | string | `"local-path"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| queryLogLevel | string | `":debug"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `3000` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| workspaces.enabled | bool | `false` | deploy workspaces |
| workspaces.ingress.enabled | bool | `true` | deploy workspaces ingress |
| workspaces.ingress.hosts[0].host | string | `"workspaces.dinsro.localtest.me"` |  |
| workspaces.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| workspaces.service.port | int | `3693` |  |
| workspaces.service.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
