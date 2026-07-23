locals {

  metadata = {
    environment  = "Organization"
    github_owner = "example-org"

    key = {
      company = "dmc"
      env     = "org"
      layer   = "organization"
    }
  }

  common_name = join("-", [
    local.metadata.key.company,
    local.metadata.key.env
  ])

}
