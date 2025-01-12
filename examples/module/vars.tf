variable "repository_name" {
  type = string
}

variable "issue_label_labels" {
  type = list(object({
    name        = string
    color       = optional(string, "ffffff")
    description = optional(string, "")
  }))
  description = "(Optional) Set of labels to be created and associated with repo"
}

variable "github_repository_collaborators_collaborators" {
  type    = map(string)
  default = {}
}

variable "github_repository_file_files_and_content" {
  type = list(object({
    file          = string
    content       = optional(string)
    file_location = optional(string)
  }))
  description = "Files to create"
  default     = []
  validation {
    condition     = alltrue([for f in var.github_repository_file_files_and_content : f.content != null || f.file_location != null])
    error_message = "Each file must have either 'content' or 'file_location' set."
  }
}