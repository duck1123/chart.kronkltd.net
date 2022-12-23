# me-untethr-nostr-relay

![Version: 0.1.3](https://img.shields.io/badge/Version-0.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.2.1](https://img.shields.io/badge/AppVersion-0.2.1-informational?style=flat-square)

A nostr relay, written in Clojure.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| confPath | string | `"/app/conf"` |  |
| dataPath | string | `"/app/data"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"duck1123/me.untethr.nostr-relay"` |  |
| image.tag | string | `"0.2.1"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"relay.localhost"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.size | string | `"1G"` |  |
| persistence.storageClass | string | `"local-path"` |  |
| podSecurityContext.fsGroup | int | `3434` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| podSecurityContext.runAsGroup | int | `3434` |  |
| podSecurityContext.runAsUser | int | `3434` |  |
| relay.contact | string | `""` |  |
| relay.description | string | `"If I had more time, I would have written a shorter letter."` |  |
| relay.name | string | `"relay.localhost"` |  |
| relay.pubkey | string | `""` |  |
| relay.software | string | `"https://github.com/duck1123/me.untethr.nostr-relay"` |  |
| relay.username | string | `""` |  |
| securityContext.runAsGroup | int | `3434` |  |
| securityContext.runAsUser | int | `3434` |  |
| service.port | int | `9000` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |

