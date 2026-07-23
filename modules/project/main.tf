module "wrapper_repository" {
  source  = "gocloudLa/wrapper-repository/github"
  version = "0.1.0"

  metadata = var.metadata

  repository_parameters = var.repository_parameters
  repository_defaults   = var.repository_defaults
}
