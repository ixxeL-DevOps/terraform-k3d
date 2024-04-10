variable "helm_globals" {
  description = "Global variables for helm install"
  type = object({
    name  = string
    chart = string
    namespace = optional(string)
    create_namespace = optional(bool, false)
    atomic = optional(bool, false)
    skip_crds = optional(bool, false)
    wait = optional(bool, true)
    timeout = optional(number, 300)
    lint = optional(bool, false)
    values_file = optional(string)
  })
}

variable "set_value" {
  description = "Value to set for helm deployment"
  type = list(object({
    name  = string
    value = string
    type = optional(string)
  }))
  default = []
}

variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
}