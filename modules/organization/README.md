# Organization Layer

The Organization layer provides GitHub organization settings, membership management, and team governance. This layer is typically deployed once per GitHub organization and establishes the foundational identity and access structure for repositories.

## 🎯 Overview

The Organization layer provides GitHub organization settings, membership management, and team governance. This layer is typically deployed once per GitHub organization and establishes the foundational identity and access structure for repositories.

This layer includes the following GoCloud wrapper modules:

- **[terraform-github-wrapper-organization](https://github.com/gocloudLa/terraform-github-wrapper-organization)** - Organization settings, security defaults, webhooks, and memberships
- **[terraform-github-wrapper-team](https://github.com/gocloudLa/terraform-github-wrapper-team)** - Teams, memberships, and repository permission grants

## 🚀 Usage

### Prerequisites

- Terraform / OpenTofu >= 1.11
- GitHub provider configured with organization admin permissions
- A GitHub organization owner / token with sufficient scopes

### Basic Usage

**main.tf**
```hcl
module "organization" {
  source = "gocloudLa/standard-platform/github//modules/organization"
  # version = "{tag_specific_version}"

  metadata = local.metadata

  organization_parameters = {
    # Organization configuration
  }

  team_parameters = {
    # Team configuration
  }
}
```

**metadata.tf**
```hcl
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
}
```


## 📋 Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.11.1 |
| github | ~> 6.10 |

## 🔧 Providers

| Name | Version |
|------|---------|
| github | ~> 6.10 |

## 📥 Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| metadata | Common metadata for all resources | `object` | n/a | yes |
| organization_parameters | Organization management configuration | `object` | `{}` | no |
| organization_defaults | Organization default parameters | `object` | `{}` | no |
| team_parameters | Team management configuration | `object` | `{}` | no |
| team_defaults | Team default parameters | `object` | `{}` | no |

## 📤 Outputs

| Name | Description |
|------|-------------|
| organization_settings | GitHub organization settings resource |
| organization_webhooks | Map of organization webhooks |
| memberships | Map of organization memberships |
| teams | Map of created teams keyed by team name |
| team_memberships | Map of team memberships keyed by team name |
| team_repository_permissions | Map of team repository permissions keyed by team name |

## 🏷️ Resource Naming Convention

The platform uses metadata keys for consistent naming across layers:

- **Organization Layer**: `{key.company}-{key.env}` (e.g., `dmc-org`)

### Custom Naming Override

You can override the automatic naming by adding these optional fields to your metadata:

```hcl
locals {
  metadata = {
    # ... other metadata fields ...
    common_name = "dmc-org"        # Override automatic naming
  }
}
```

## 🏷️ Resource Tags Convention

GitHub resources do not use AWS-style tags. Use metadata (`company`, `environment`, `layer`) for consistent naming and documentation across your Terraform workspace.

## 📋 Example Usage

See the [organization example](../../examples/organization) for a complete implementation example.

## 🤝 Contributing

We welcome contributions! Please see our [contributing guidelines](../../CONTRIBUTING.md) for more details.

## 🆘 Support

- 📧 **Email**: info@gocloud.la
- 🐛 Issues: [GitHub Issues](https://github.com/gocloudLa/terraform-github-standard-platform/issues)
