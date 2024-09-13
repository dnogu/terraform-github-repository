module "github_repo_factory" {
    # source = "dnogu/repository/github"
    source = "../../"

    repository_name = var.repository_name
    issue_label_labels = var.issue_label_labels
    github_repository_collaborators_collaborators = var.github_repository_collaborators_collaborators
}