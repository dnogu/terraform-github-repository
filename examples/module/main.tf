module "github_repo_factory" {
    source = "https://github.com/dnogu/terraform-github-repository.git@latest"

    repository_name = var.repository_name
}
