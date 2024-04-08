# k3d

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_k3d"></a> [k3d](#requirement\_k3d) | ~> 0.0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_k3d"></a> [k3d](#provider\_k3d) | 0.0.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [k3d_cluster.k3s](https://registry.terraform.io/providers/pvotal-tech/k3d/latest/docs/resources/cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env_vars_cfg"></a> [env\_vars\_cfg](#input\_env\_vars\_cfg) | Environment variables for k3s cluster nodes | <pre>list(object({<br>    key          = optional(string)<br>    value        = optional(string)<br>    node_filters = optional(list(string), ["agent[*]", "server[*]"])<br>  }))</pre> | `[]` | no |
| <a name="input_k3d_globals"></a> [k3d\_globals](#input\_k3d\_globals) | Global variables for k3d | <pre>object({<br>    name    = string<br>    servers = optional(number, 1)<br>    agents  = optional(number)<br>    image   = optional(string, "rancher/k3s:v1.24.4-k3s1")<br>    network = optional(string)<br>    token   = optional(string)<br>  })</pre> | n/a | yes |
| <a name="input_k3d_specific"></a> [k3d\_specific](#input\_k3d\_specific) | Specific variables for k3d | <pre>object({<br>    disable_load_balancer = optional(bool)<br>    disable_image_volume  = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_k3s_extra_args"></a> [k3s\_extra\_args](#input\_k3s\_extra\_args) | Extra args for k3s server | <pre>list(object({<br>    arg          = optional(string)<br>    node_filters = optional(list(string), ["loadbalancer"])<br>  }))</pre> | `[]` | no |
| <a name="input_kube_api"></a> [kube\_api](#input\_kube\_api) | Configuration for the k3d kube API | <pre>object({<br>    host      = optional(string)<br>    host_ip   = optional(string)<br>    host_port = optional(number, 6443)<br>  })</pre> | `{}` | no |
| <a name="input_kubeconfig"></a> [kubeconfig](#input\_kubeconfig) | Specific variables for kubeconfig | <pre>object({<br>    update_default_kubeconfig = optional(bool)<br>    switch_current_context    = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_labels_cfg"></a> [labels\_cfg](#input\_labels\_cfg) | Labels for k3s cluster nodes | <pre>list(object({<br>    key          = optional(string)<br>    value        = optional(string)<br>    node_filters = optional(list(string), ["agent[*]", "server[*]"])<br>  }))</pre> | `[]` | no |
| <a name="input_ports_cfg"></a> [ports\_cfg](#input\_ports\_cfg) | Global variables for the k3s ports | <pre>list(object({<br>    host_port      = optional(number, 8080)<br>    container_port = number<br>    node_filters   = optional(list(string), ["loadbalancer"])<br>  }))</pre> | `[]` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Configuration for the k3d runtime | <pre>object({<br>    servers_memory = optional(string)<br>    agents_memory  = optional(string)<br>    gpu_request    = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_volumes_cfg"></a> [volumes\_cfg](#input\_volumes\_cfg) | Global variables for k3s cluster mounted volumes | <pre>list(object({<br>    source       = optional(string)<br>    destination  = optional(string)<br>    node_filters = optional(list(string), ["agent[*]", "server[*]"])<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k3s_host"></a> [k3s\_host](#output\_k3s\_host) | host of the k3s cluster |
| <a name="output_k3s_id"></a> [k3s\_id](#output\_k3s\_id) | id of the k3s cluster |
| <a name="output_k3s_network"></a> [k3s\_network](#output\_k3s\_network) | docker network of the k3s cluster |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
