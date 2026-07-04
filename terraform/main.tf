terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.1.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "default"
}

locals {
  cloudflare_zone_id    = "3ad0619381ef2fcb5a1bbca6a88b782d"
  cloudflare_account_id = "c4ae140fd7a6950a6e72ffb33207f473"
}