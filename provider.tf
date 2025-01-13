terraform {
  required_version = ">= 1.8.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.4.0"
    }
  }
}

provider "github" {
  token = var.github_token
}