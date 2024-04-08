resource "k3d_cluster" "k3s" {
  name    = var.k3d_globals.name
  servers = var.k3d_globals.servers
  agents  = var.k3d_globals.agents
  image   = var.k3d_globals.image
  network = var.k3d_globals.network
  token   = var.k3d_globals.token

  k3d {
    disable_load_balancer = var.k3d_specific.disable_load_balancer
    disable_image_volume  = var.k3d_specific.disable_image_volume
  }

  kubeconfig {
    update_default_kubeconfig = var.kubeconfig.update_default_kubeconfig
    switch_current_context    = var.kubeconfig.switch_current_context
  }

  kube_api {
    host      = var.kube_api.host
    host_ip   = var.kube_api.host_ip
    host_port = var.kube_api.host_port
  }

  runtime {
    servers_memory = var.runtime.servers_memory
    agents_memory  = var.runtime.agents_memory
    gpu_request    = var.runtime.gpu_request
  }

  dynamic "port" {
    for_each = var.ports_cfg
    iterator = item #optional
    content {
      host_port      = item.value.host_port
      container_port = item.value.container_port
      node_filters   = item.value.node_filters
    }
  }

  dynamic "volume" {
    for_each = var.volumes_cfg
    iterator = item #optional
    content {
      source       = item.value.source
      destination  = item.value.destination
      node_filters = item.value.node_filters
    }
  }

  dynamic "label" {
    for_each = var.labels_cfg
    iterator = item #optional
    content {
      key          = item.value.key
      value        = item.value.value
      node_filters = item.value.node_filters
    }
  }

  dynamic "env" {
    for_each = var.env_vars_cfg
    iterator = item #optional
    content {
      key          = item.value.key
      value        = item.value.value
      node_filters = item.value.node_filters
    }
  }
}
