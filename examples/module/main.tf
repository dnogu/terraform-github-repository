module "github_repo_factory" {
    source = "../../"
    # source = "https://github.com/dnogu/terraform-github-repository.git@latest"

    repository_name = var.repository_name
    issue_label_labels = var.issue_label_labels
}
