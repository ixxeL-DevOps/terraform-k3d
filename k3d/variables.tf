## K3S Variables
variable "k3d_globals" {}
variable "k3d_specific" {
  default = {}
}
variable "runtime" {
  default = {}
}
variable "kubeconfig" {
  default = {}
}
variable "kube_api" {
  default = {}
}
variable "ports_cfg" {
  default = []
}
variable "volumes_cfg" {
  default = []
}
variable "labels_cfg" {
  default = []
}
variable "env_vars_cfg" {
  default = []
}

## Helm Variables

variable "helm_globals" {
  default = {}
}

variable "set_value" {
  default = []
}

variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
}
