output "github_repository_name" {
  value       = github_repository.repo.name
  description = "Name of the repo."
}
output "github_repository_full_name" {
  value       = github_repository.repo.full_name
  description = "A string of the form \"orgname/reponame\"."
}
output "github_repository_html_url" {
  value       = github_repository.repo.html_url
  description = "URL to the repository on the web."
}
output "github_repository_ssh_clone_url" {
  value       = github_repository.repo.ssh_clone_url
  description = "URL that can be provided to git clone to clone the repository via SSH."
}
output "github_repository_http_clone_url" {
  value       = github_repository.repo.http_clone_url
  description = "URL that can be provided to git clone to clone the repository via HTTPS."
}
output "github_repository_git_clone_url" {
  value       = github_repository.repo.git_clone_url
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol."
}
output "github_repository_svn_url" {
  value       = github_repository.repo.svn_url
  description = "URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation."
}
output "github_repository_node_id" {
  value       = github_repository.repo.node_id
  description = "GraphQL global node id for use with v4 API"
}
output "github_repository_repo_id" {
  value       = github_repository.repo.repo_id
  description = "GitHub ID for the repository"
}
output "github_repository_primary_language" {
  value       = github_repository.repo.primary_language
  description = "The primary language used in the repository."
}


output "github_repository_collaborators_user" {
  value       = github_repository_collaborators.repo_collaborators.user
  description = "The user block exports username and role."
}