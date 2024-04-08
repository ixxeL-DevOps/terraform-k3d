variable "k3d_globals" {
  description = "Global variables for k3d"
  type = object({
    name    = string
    servers = optional(number, 1)
    agents  = optional(number)
    image   = optional(string, "rancher/k3s:v1.24.4-k3s1")
    network = optional(string)
    token   = optional(string)
  })
}

variable "k3d_specific" {
  description = "Specific variables for k3d"
  type = object({
    disable_load_balancer = optional(bool)
    disable_image_volume  = optional(bool)
  })
  default = {}
}

variable "kubeconfig" {
  description = "Specific variables for kubeconfig"
  type = object({
    update_default_kubeconfig = optional(bool)
    switch_current_context    = optional(bool)
  })
  default = {}
}

variable "kube_api" {
  description = "Configuration for the k3d kube API"
  type = object({
    host      = optional(string)
    host_ip   = optional(string)
    host_port = optional(number, 6443)
  })
  default = {}
}

variable "runtime" {
  description = "Configuration for the k3d runtime"
  type = object({
    servers_memory = optional(string)
    agents_memory  = optional(string)
    gpu_request    = optional(string)
  })
  default = {}
}

# tflint-ignore: terraform_unused_declarations
variable "k3s_extra_args" {
  description = "Extra args for k3s server"
  type = list(object({
    arg          = optional(string)
    node_filters = optional(list(string), ["loadbalancer"])
  }))
  default = []
}

variable "ports_cfg" {
  description = "Global variables for the k3s ports"
  type = list(object({
    host_port      = optional(number, 8080)
    container_port = number
    node_filters   = optional(list(string), ["loadbalancer"])
  }))
  default = []
}

variable "volumes_cfg" {
  description = "Global variables for k3s cluster mounted volumes"
  type = list(object({
    source       = optional(string)
    destination  = optional(string)
    node_filters = optional(list(string), ["agent[*]", "server[*]"])
  }))
  default = []
}

variable "labels_cfg" {
  description = "Labels for k3s cluster nodes"
  type = list(object({
    key          = optional(string)
    value        = optional(string)
    node_filters = optional(list(string), ["agent[*]", "server[*]"])
  }))
  default = []
}

variable "env_vars_cfg" {
  description = "Environment variables for k3s cluster nodes"
  type = list(object({
    key          = optional(string)
    value        = optional(string)
    node_filters = optional(list(string), ["agent[*]", "server[*]"])
  }))
  default = []
}
