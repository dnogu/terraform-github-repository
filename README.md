<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| github | 6.2.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_issue_labels.repo_label](https://registry.terraform.io/providers/integrations/github/6.2.3/docs/resources/issue_labels) | resource |
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/6.2.3/docs/resources/repository) | resource |
| [github_repository_collaborators.repo_collaborators](https://registry.terraform.io/providers/integrations/github/6.2.3/docs/resources/repository_collaborators) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| github\_repository\_collaborators\_collaborators | Map of Users as key and permission as value | `map(string)` | `{}` | no |
| issue\_label\_labels | (Optional) Set of labels to be created and associated with repo | <pre>list(object({<br>    name        = string<br>    color       = optional(string, "ffffff")<br>    description = optional(string, "")<br>  }))</pre> | `[]` | no |
| repository\_allow\_auto\_merge | (Optional) Set to true to allow auto-merging pull requests on the repository. | `bool` | `null` | no |
| repository\_allow\_merge\_commit | (Optional) Set to false to disable merge commits on the repository. | `bool` | `null` | no |
| repository\_allow\_rebase\_merge | (Optional) Set to false to disable rebase merges on the repository. | `bool` | `null` | no |
| repository\_allow\_squash\_merge | (Optional) Set to false to disable squash merges on the repository. | `bool` | `null` | no |
| repository\_allow\_update\_branch | (Optional) Set to true to always suggest updating pull request branches. | `bool` | `null` | no |
| repository\_archive\_on\_destroy | (Optional) Set to true to archive the repository instead of deleting on destroy. | `bool` | `true` | no |
| repository\_archived | (Optional) Specifies if the repository should be archived. Defaults to false. NOTE Currently, the API does not support unarchiving. | `bool` | `null` | no |
| repository\_auto\_init | (Optional) Set to true to produce an initial commit in the repository. | `bool` | `null` | no |
| repository\_delete\_branch\_on\_merge | (Optional) Automatically delete head branch after a pull request is merged. Defaults to false. | `bool` | `null` | no |
| repository\_description | (Optional) A description of the repository. | `string` | `null` | no |
| repository\_gitignore\_template | (Optional) Use the name of the template without the extension. For example, 'Haskell'. | `bool` | `null` | no |
| repository\_has\_discussions | (Optional) Set to true to enable GitHub Discussions on the repository. Defaults to false. | `bool` | `false` | no |
| repository\_has\_downloads | (Optional) Set to true to enable the (deprecated) downloads features on the repository. | `bool` | `null` | no |
| repository\_has\_issues | (Optional) Set to true to enable the GitHub Issues features on the repository. | `bool` | `null` | no |
| repository\_has\_projects | (Optional) Set to true to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error. | `bool` | `true` | no |
| repository\_has\_wiki | (Optional) Set to true to enable the GitHub Wiki features on the repository. | `bool` | `null` | no |
| repository\_homepage\_url | (Optional) URL of a page describing the project. | `string` | `null` | no |
| repository\_ignore\_vulnerability\_alerts\_during\_read | (Optional) Set to true to not call the vulnerability alerts endpoint so the resource can also be used without admin permissions during read. | `bool` | `null` | no |
| repository\_is\_template | (Optional) Set to true to tell GitHub that this is a template repository. | `bool` | `null` | no |
| repository\_license\_template | (Optional) Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'. | `bool` | `null` | no |
| repository\_merge\_commit\_message | Can be PR\_BODY, PR\_TITLE, or BLANK for a default merge commit message. Applicable only if allow\_merge\_commit is true. | `bool` | `null` | no |
| repository\_merge\_commit\_title | Can be PR\_TITLE or MERGE\_MESSAGE for a default merge commit title. Applicable only if allow\_merge\_commit is true. | `bool` | `null` | no |
| repository\_name | (Required) The name of the repository. | `string` | n/a | yes |
| repository\_squash\_merge\_commit\_message | (Optional) Can be PR\_BODY, COMMIT\_MESSAGES, or BLANK for a default squash merge commit message. Applicable only if allow\_squash\_merge is true. | `bool` | `null` | no |
| repository\_squash\_merge\_commit\_title | (Optional) Can be PR\_TITLE or COMMIT\_OR\_PR\_TITLE for a default squash merge commit title. Applicable only if allow\_squash\_merge is true. | `bool` | `null` | no |
| repository\_template | (Optional) Use a template repository to create this resource. See Template Repositories below for details. | <pre>object({<br>    owner                = optional(string, null)<br>    repository           = optional(string, null)<br>    include_all_branches = optional(bool, null)<br>  })</pre> | `null` | no |
| repository\_topics | (Optional) The list of topics of the repository. | `list(string)` | `null` | no |
| repository\_visibility | (Optional) Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal. The visibility parameter overrides the private parameter. | `string` | `"private"` | no |
| repository\_vulnerability\_alerts | (Optional) Set to true to enable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level. (Note for importing: GitHub enables the alerts on public repos but disables them on private repos by default.) See GitHub Documentation for details. Note that vulnerability alerts have not been successfully tested on any GitHub Enterprise instance and may be unavailable in those settings. | `bool` | `null` | no |
| repository\_web\_commit\_signoff\_required | (Optional) Require contributors to sign off on web-based commits. See more here. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| github\_repository\_collaborators\_user | The user block exports username and role. |
| github\_repository\_custom\_404 | Whether the rendered GitHub Pages site has a custom 404 page. |
| github\_repository\_full\_name | A string of the form "orgname/reponame". |
| github\_repository\_git\_clone\_url | URL that can be provided to git clone to clone the repository anonymously via the git protocol. |
| github\_repository\_html\_url | URL to the repository on the web. |
| github\_repository\_http\_clone\_url | URL that can be provided to git clone to clone the repository via HTTPS. |
| github\_repository\_name | Name of the repo. |
| github\_repository\_node\_id | GraphQL global node id for use with v4 API |
| github\_repository\_primary\_language | The primary language used in the repository. |
| github\_repository\_repo\_id | GitHub ID for the repository |
| github\_repository\_ssh\_clone\_url | URL that can be provided to git clone to clone the repository via SSH. |
| github\_repository\_status | The GitHub Pages site's build status e.g. building or built. |
| github\_repository\_svn\_url | URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation. |
<!-- END_TF_DOCS -->