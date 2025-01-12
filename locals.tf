locals {
  processed_files = [
    for file in var.github_repository_file_files_and_content : {
      file    = coalesce(file.file, "")
      content = file.content != null ? file.content : file.file_location != null ? file("${file.file_location}") : ""
    }
    if file.file != null && (file.content != null || file.file_location != null)
  ]
}
