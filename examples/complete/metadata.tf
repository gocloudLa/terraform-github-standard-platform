locals {

  metadata = {
    environment  = "Production"
    github_owner = "example-org"

    key = {
      company = "dmc"
      env     = "prd"
      layer   = "organization"
    }
  }

  common_name = join("-", [
    local.metadata.key.company,
    local.metadata.key.env
  ])

}
