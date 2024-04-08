## K3S Variables
variable "k3d_globals" {
  type = k3d.k3d_globals
}
variable "k3d_specific" {
  default = {}
  type = k3d.k3d_specific
}
variable "runtime" {
  default = {}
  type = k3d.runtime
}
variable "kubeconfig" {
  default = {}
  type = k3d.kubeconfig
}
variable "kube_api" {
  default = {}
  type = k3d.kube_api
}
variable "ports_cfg" {
  default = []
  type = k3d.ports_cfg
}
variable "volumes_cfg" {
  default = []
  type = k3d.volumes_cfg
}
variable "labels_cfg" {
  default = []
  type = k3d.labels_cfg
}
variable "env_vars_cfg" {
  default = []
  type = k3d.env_vars_cfg
}

## Helm Variables

variable "helm_globals" {
  default = {}
  type = helm.helm_globals
}

variable "set_value" {
  default = []
  type = helm.set_value
}

variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
}
