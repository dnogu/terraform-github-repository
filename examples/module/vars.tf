variable "repository_name" {
  type = string
}

# variable "github_token" {
#   type = string
# }

variable "issue_label_labels" {
  type = list(object({
    name        = string
    color       = optional(string, "ffffff")
    description = optional(string, "")
  }))
  description = "(Optional) Set of labels to be created and associated with repo"
}
