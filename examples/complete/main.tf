module "wrapper_organization" {
  source = "../../modules/organization"

  metadata = {
    environment  = "Production"
    github_owner = "example-org"

    key = {
      company = "dmc"
      env     = "prd"
      layer   = "organization"
    }
  }

  organization_parameters = {}
  organization_defaults   = {}
  team_parameters         = {}
  team_defaults           = {}
}

module "wrapper_project" {
  source = "../../modules/project"

  metadata = {
    environment  = "Production"
    project      = "Common"
    github_owner = "example-org"

    key = {
      company = "dmc"
      env     = "prd"
      project = "common"
      layer   = "project"
    }
  }

  repository_parameters = {}
  repository_defaults   = {}
}
