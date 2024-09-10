resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.repository_description

  visibility                              = var.repository_visibility
  homepage_url                            = var.repository_homepage_url
  has_issues                              = var.repository_has_issues
  has_discussions                         = var.repository_has_discussions
  has_projects                            = var.repository_has_projects
  has_wiki                                = var.repository_has_wiki
  is_template                             = var.repository_is_template
  allow_merge_commit                      = var.repository_allow_merge_commit
  allow_squash_merge                      = var.repository_allow_squash_merge
  allow_rebase_merge                      = var.repository_allow_rebase_merge
  allow_auto_merge                        = var.repository_allow_auto_merge
  squash_merge_commit_title               = var.repository_squash_merge_commit_title
  squash_merge_commit_message             = var.repository_squash_merge_commit_message
  merge_commit_title                      = var.repository_merge_commit_title
  merge_commit_message                    = var.repository_merge_commit_message
  delete_branch_on_merge                  = var.repository_delete_branch_on_merge
  web_commit_signoff_required             = var.repository_web_commit_signoff_required
  has_downloads                           = var.repository_has_downloads
  auto_init                               = var.repository_auto_init
  gitignore_template                      = var.repository_gitignore_template
  license_template                        = var.repository_license_template
  archived                                = var.repository_archived
  archive_on_destroy                      = var.repository_archive_on_destroy
  topics                                  = var.repository_topics
  vulnerability_alerts                    = var.repository_vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.repository_ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.repository_allow_update_branch

  default_branch = var.repository_default_branch

  dynamic "template" {
    for_each = var.repository_template != null ? var.repository_template : {}
    content {
      owner                = each.owner
      repository           = each.repository
      include_all_branches = each.include_all_branches
    }
  }
}

resource "github_issue_label" "repo_label" {
  for_each = {for label in var.issue_label_labels: label.name => label}
  repository = github_repository.repo.name
  name        = each.key
  color       = each.value.color
  description = each.value.description
}
