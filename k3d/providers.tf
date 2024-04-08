terraform {
  required_version = ">= 1.3"
  required_providers {
    k3d = {
      source = "pvotal-tech/k3d"
      version = "~> 0.0.7"
    }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.13.0"
    }
  }
}
provider "k3d" {
  # Configuration options
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}
