output "k3s_id" {
  value       = k3d_cluster.k3s.id
  description = "id of the k3s cluster"
}

output "k3s_network" {
  value       = k3d_cluster.k3s.network
  description = "docker network of the k3s cluster"
}

output "k3s_host" {
  value       = k3d_cluster.k3s.credentials[*].host
  description = "host of the k3s cluster"
  sensitive   = true
}
