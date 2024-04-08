# helm

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.example](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_globals"></a> [helm\_globals](#input\_helm\_globals) | Global variables for helm install | <pre>object({<br>    name  = string<br>    chart = string<br>    namespace = optional(string)<br>    create_namespace = optional(bool, false)<br>    atomic = optional(bool, false)<br>    skip_crds = optional(bool, false)<br>    wait = optional(bool, true)<br>    timeout = optional(number, 300)<br>    lint = optional(bool, false)<br>    values_file = optional(string)<br>  })</pre> | n/a | yes |
| <a name="input_set_value"></a> [set\_value](#input\_set\_value) | Value to set for helm deployment | <pre>list(object({<br>    name  = string<br>    value = string<br>    type = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
