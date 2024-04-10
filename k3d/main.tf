module "k3s-cluster" {
  source = "./modules/k3d"
  k3d_globals  = var.k3d_globals
  k3d_specific = var.k3d_specific
  kubeconfig   = var.kubeconfig
  runtime      = var.runtime
  kube_api     = var.kube_api
  ports_cfg    = var.ports_cfg
  volumes_cfg  = var.volumes_cfg
  labels_cfg   = var.labels_cfg
  env_vars_cfg = var.env_vars_cfg
}
