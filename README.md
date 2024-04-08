# terraform-k3d

## Terraform configuration

The terraform play follows modules best practices (local module). All variables from provider are not populated, but I tried to add some of them. Modules can be improved over time by our teams.

I recommend using a `terraform.tfvars` file such as below:

```terraform
k3d_globals = {
  name  = "windforlife"
}

ports_cfg = [
  {
    host_port      = 8443,
    container_port = 443
  },
  {
    host_port      = 8080,
    container_port = 80
  }
]

helm_globals = {
  name  = "windforlife"
  chart = "helm-chart"
  namespace = "windforlife"
  create_namespace = true
}
```

This will create a single node k3s cluster able to support workload on it.
