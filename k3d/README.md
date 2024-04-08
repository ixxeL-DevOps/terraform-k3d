# fieldbox-terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.8.0 |
| <a name="requirement_k3d"></a> [k3d](#requirement\_k3d) | ~> 0.0.6 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm-windforlife"></a> [helm-windforlife](#module\_helm-windforlife) | ./modules/helm | n/a |
| <a name="module_k3s-cluster"></a> [k3s-cluster](#module\_k3s-cluster) | ./modules/k3d | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env_vars_cfg"></a> [env\_vars\_cfg](#input\_env\_vars\_cfg) | n/a | `list` | `[]` | no |
| <a name="input_helm_globals"></a> [helm\_globals](#input\_helm\_globals) | n/a | `map` | `{}` | no |
| <a name="input_k3d_globals"></a> [k3d\_globals](#input\_k3d\_globals) | # K3S Variables | `any` | n/a | yes |
| <a name="input_k3d_specific"></a> [k3d\_specific](#input\_k3d\_specific) | n/a | `map` | `{}` | no |
| <a name="input_kube_api"></a> [kube\_api](#input\_kube\_api) | n/a | `map` | `{}` | no |
| <a name="input_kubeconfig"></a> [kubeconfig](#input\_kubeconfig) | n/a | `map` | `{}` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | n/a | `string` | `"~/.kube/config"` | no |
| <a name="input_labels_cfg"></a> [labels\_cfg](#input\_labels\_cfg) | n/a | `list` | `[]` | no |
| <a name="input_ports_cfg"></a> [ports\_cfg](#input\_ports\_cfg) | n/a | `list` | `[]` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | n/a | `map` | `{}` | no |
| <a name="input_set_value"></a> [set\_value](#input\_set\_value) | n/a | `list` | `[]` | no |
| <a name="input_volumes_cfg"></a> [volumes\_cfg](#input\_volumes\_cfg) | n/a | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k3s_host"></a> [k3s\_host](#output\_k3s\_host) | n/a |
| <a name="output_k3s_id"></a> [k3s\_id](#output\_k3s\_id) | n/a |
| <a name="output_k3s_network"></a> [k3s\_network](#output\_k3s\_network) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

- https://developer.hashicorp.com/terraform/language/functions/templatefile
- https://developer.hashicorp.com/terraform/language/expressions/dynamic-blocks
- https://developer.hashicorp.com/terraform/language/expressions/type-constraints
