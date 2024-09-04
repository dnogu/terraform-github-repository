module "github_repo_factory" {
    source = "https://github.com/dnogu/terraform-github-repository.git@0.0.1"

    github_token = var.github_token
    repository_name = var.repository_name
}
