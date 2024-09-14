# AUTHENTICATION VARIABLE
variable "terraform_repo" {
  type = bool
  description = "Whether repo will be used with terraform"
  default = false
}

# AUTHENTICATION VARIABLES
variable "repository_name" {
  type        = string
  description = "(Required) The name of the repository."
  nullable    = false
}

variable "repository_description" {
  type        = string
  description = "(Optional) A description of the repository."
  default     = null
}

variable "repository_homepage_url" {
  type        = string
  description = "(Optional) URL of a page describing the project."
  default     = null
}

variable "repository_visibility" {
  type        = string
  description = "(Optional) Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal. The visibility parameter overrides the private parameter."
  default     = "private"

  validation {
    condition     = var.repository_visibility == "public" || var.repository_visibility == "private"
    error_message = "Variable visibility must 'public' or 'private'"
  }
}

variable "repository_has_issues" {
  type        = bool
  description = "(Optional) Set to true to enable the GitHub Issues features on the repository."
  default     = null
}

variable "repository_has_discussions" {
  type        = bool
  description = "(Optional) Set to true to enable GitHub Discussions on the repository. Defaults to false."
  default     = false
}

variable "repository_has_projects" {
  type        = bool
  description = "(Optional) Set to true to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error."
  default     = true
}

variable "repository_has_wiki" {
  type        = bool
  description = "(Optional) Set to true to enable the GitHub Wiki features on the repository."
  default     = null
}

variable "repository_is_template" {
  type        = bool
  description = "(Optional) Set to true to tell GitHub that this is a template repository."
  default     = null
}

variable "repository_allow_merge_commit" {
  type        = bool
  description = "(Optional) Set to false to disable merge commits on the repository."
  default     = null
}

variable "repository_allow_squash_merge" {
  type        = bool
  description = "(Optional) Set to false to disable squash merges on the repository."
  default     = null
}

variable "repository_allow_rebase_merge" {
  type        = bool
  description = "(Optional) Set to false to disable rebase merges on the repository."
  default     = null
}

variable "repository_allow_auto_merge" {
  type        = bool
  description = "(Optional) Set to true to allow auto-merging pull requests on the repository."
  default     = null
}

variable "repository_squash_merge_commit_title" {
  type        = bool
  description = "(Optional) Can be PR_TITLE or COMMIT_OR_PR_TITLE for a default squash merge commit title. Applicable only if allow_squash_merge is true."
  default     = null
}

variable "repository_squash_merge_commit_message" {
  type        = bool
  description = "(Optional) Can be PR_BODY, COMMIT_MESSAGES, or BLANK for a default squash merge commit message. Applicable only if allow_squash_merge is true."
  default     = null
}

variable "repository_merge_commit_title" {
  type        = bool
  description = "Can be PR_TITLE or MERGE_MESSAGE for a default merge commit title. Applicable only if allow_merge_commit is true."
  default     = null
}

variable "repository_merge_commit_message" {
  type        = bool
  description = "Can be PR_BODY, PR_TITLE, or BLANK for a default merge commit message. Applicable only if allow_merge_commit is true."
  default     = null
}

variable "repository_delete_branch_on_merge" {
  type        = bool
  description = "(Optional) Automatically delete head branch after a pull request is merged. Defaults to false."
  default     = null
}

variable "repository_web_commit_signoff_required" {
  type        = bool
  description = "(Optional) Require contributors to sign off on web-based commits. See more here. Defaults to false."
  default     = false
}

variable "repository_has_downloads" {
  type        = bool
  description = "(Optional) Set to true to enable the (deprecated) downloads features on the repository."
  default     = null
}

variable "repository_auto_init" {
  type        = bool
  description = "(Optional) Set to true to produce an initial commit in the repository."
  default     = null
}

variable "repository_gitignore_template" {
  type        = bool
  description = "(Optional) Use the name of the template without the extension. For example, 'Haskell'."
  default     = null
}

variable "repository_license_template" {
  type        = bool
  description = "(Optional) Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'."
  default     = null
}

variable "repository_default_branch" {
  type        = bool
  description = "(Optional) (Deprecated: Use github_branch_default resource instead) The name of the default branch of the repository. NOTE: This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository. This means a user will have to omit this parameter from the initial repository creation and create the target branch inside of the repository prior to setting this attribute."
  default     = null
}

variable "repository_archived" {
  type        = bool
  description = "(Optional) Specifies if the repository should be archived. Defaults to false. NOTE Currently, the API does not support unarchiving."
  default     = null
}

variable "repository_archive_on_destroy" {
  type        = bool
  description = "(Optional) Set to true to archive the repository instead of deleting on destroy."
  default     = true
}


variable "repository_topics" {
  type        = list(string)
  description = "(Optional) The list of topics of the repository."
  default     = null
}

variable "repository_template" {
  type = object({
    owner                = optional(string, null)
    repository           = optional(string, null)
    include_all_branches = optional(bool, null)
  })
  description = "(Optional) Use a template repository to create this resource. See Template Repositories below for details."
  default     = null
}

variable "repository_vulnerability_alerts" {
  type        = bool
  description = "(Optional) Set to true to enable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level. (Note for importing: GitHub enables the alerts on public repos but disables them on private repos by default.) See GitHub Documentation for details. Note that vulnerability alerts have not been successfully tested on any GitHub Enterprise instance and may be unavailable in those settings."
  default     = null
}

variable "repository_ignore_vulnerability_alerts_during_read" {
  type        = bool
  description = "(Optional) Set to true to not call the vulnerability alerts endpoint so the resource can also be used without admin permissions during read."
  default     = null
}

variable "repository_allow_update_branch" {
  type        = bool
  description = "(Optional) Set to true to always suggest updating pull request branches."
  default     = null
}
variable "issue_label_labels" {
  type = list(object({
    name        = string
    color       = optional(string, "ffffff")
    description = optional(string, "")
  }))
  description = "(Optional) Set of labels to be created and associated with repo"
  default     = []
}

variable "github_repository_collaborators_collaborators" {
  type = map(string)
  description = "Map of Users as key and permission as value"
  default = {}
}

variable "github_repository_file_repository" {
    type = string
    description = "(Required) The repository to create the file in."
}
variable "github_repository_file_file" {
    type = string
    description = "(Required) The path of the file to manage."
    default = null
}
variable "github_repository_file_content" {
    type = string
    description = "(Required) The file content."
    default = null
}
variable "github_repository_file_branch" {
    type = string
    description = "(Optional) Git branch (defaults to the repository's default branch). The branch must already exist, it will not be created if it does not already exist"
    default = null
}
variable "github_repository_file_commit_author" {
    type = string
    description = "(Optional) Committer author name to use. NOTE: GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App. This maybe useful when a branch protection rule requires signed commits"
    default = null
}
variable "github_repository_file_commit_email" {
    type = string
    description = "(Optional) Committer email address to use. NOTE: GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App. This may be useful when a branch protection rule requires signed commits"
    default = null
}
variable "github_repository_file_commit_message" {
    type = string
    description = "(Optional) The commit message when creating, updating or deleting the managed file"
    default = "Managed by Terraform"
}
variable "github_repository_file_overwrite_on_create" {
    type = bool
    description = "(Optional) Enable overwriting existing files. If set to true it will overwrite an existing file with the same name. If set to false it will fail if there is an existing file with the same name"
    default = false
}