output "k3s_id" {
  value = module.k3s-cluster.k3s_id
}

output "k3s_network" {
  value = module.k3s-cluster.k3s_network
}

output "k3s_host" {
  value = nonsensitive(module.k3s-cluster.k3s_host)
}
