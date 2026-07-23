locals {

  metadata = {
    environment  = "Production"
    project      = "Core"
    github_owner = "example-org"

    key = {
      company = "dmc"
      env     = "prd"
      project = "core"
      layer   = "project"
    }
  }

  common_name_base = join("-", [
    local.metadata.key.company,
    local.metadata.key.env
  ])

  common_name = join("-", [
    local.common_name_base,
    local.metadata.key.project
  ])

}
