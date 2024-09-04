module "github_repo_factory" {
    source = "../../"

    github_token = var.github_token
    repository_name = var.repository_name
}