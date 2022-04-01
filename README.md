## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_rancher2"></a> [rancher2](#requirement\_rancher2) | >= 1.22.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_rancher2"></a> [rancher2](#provider\_rancher2) | >= 1.22.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [rancher2_app_v2.keycloak](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/app_v2) | resource |
| [rancher2_namespace.keycloak](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_project.keycloak](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_cluster.kube_cluster](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/data-sources/cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | n/a | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_keycloak_host"></a> [keycloak\_host](#input\_keycloak\_host) | n/a | `string` | n/a | yes |
| <a name="input_rancher_conn_insecure"></a> [rancher\_conn\_insecure](#input\_rancher\_conn\_insecure) | n/a | `bool` | n/a | yes |
| <a name="input_rancher_token"></a> [rancher\_token](#input\_rancher\_token) | n/a | `string` | n/a | yes |
| <a name="input_rancher_url"></a> [rancher\_url](#input\_rancher\_url) | n/a | `string` | n/a | yes |
| <a name="input_keycloak_namespace"></a> [keycloak\_namespace](#input\_keycloak\_namespace) | n/a | `string` | `"keycloak"` | no |

## Outputs

No outputs.
