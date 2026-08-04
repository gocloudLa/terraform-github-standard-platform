module "wrapper_organization" {
  source  = "gocloudLa/wrapper-organization/github"
  version = "0.1.1"

  metadata = var.metadata

  organization_parameters = var.organization_parameters
  organization_defaults   = var.organization_defaults
}

module "wrapper_team" {
  source  = "gocloudLa/wrapper-team/github"
  version = "0.1.0"

  metadata = var.metadata

  team_parameters = var.team_parameters
  team_defaults   = var.team_defaults
}
