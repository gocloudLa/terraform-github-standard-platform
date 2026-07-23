module "wrapper_organization" {
  source = "../../../../MODULES/terraform-github-wrapper-organization"

  metadata = var.metadata

  organization_parameters = var.organization_parameters
  organization_defaults   = var.organization_defaults
}

module "wrapper_team" {
  source = "../../../../MODULES/terraform-github-wrapper-team"

  metadata = var.metadata

  team_parameters = var.team_parameters
  team_defaults   = var.team_defaults
}
