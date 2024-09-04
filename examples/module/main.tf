module "github_repo_factory" {
    source = "https://github.com/dnogu/terraform-github-repository.git@latest"

    github_token = var.github_token
    repository_name = var.repository_name
}
