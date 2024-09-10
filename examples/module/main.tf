module "github_repo_factory" {
    source = "../../"
    # source = "https://github.com/dnogu/terraform-github-repository.git@latest"

    repository_name = var.repository_name
    issue_labels_labels = var.issue_labels_labels
}
