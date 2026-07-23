module "wrapper_repository" {
  source = "../../../../MODULES/terraform-github-wrapper-repository"

  metadata = var.metadata

  repository_parameters = var.repository_parameters
  repository_defaults   = var.repository_defaults
}
