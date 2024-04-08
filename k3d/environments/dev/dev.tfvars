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
  chart = "../../helm-chart"
  namespace = "windforlife"
  create_namespace = true
}