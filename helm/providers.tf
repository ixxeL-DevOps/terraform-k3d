terraform {
  required_version = ">= 1.3"
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.13.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}