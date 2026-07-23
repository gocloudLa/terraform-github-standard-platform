# Project Layer

The Project layer provides GitHub repository fleet management including visibility, merge policies, branch protection, team and user permissions, environments, secrets, variables, and seeded files. This layer contains the repository infrastructure that applications and modules depend on.

## 🎯 Overview

The Project layer provides GitHub repository fleet management including visibility, merge policies, branch protection, team and user permissions, environments, secrets, variables, and seeded files. This layer contains the repository infrastructure that applications and modules depend on.

This layer includes the following GoCloud wrapper modules:

- **[terraform-github-wrapper-repository](https://github.com/gocloudLa/terraform-github-wrapper-repository)** - Repository creation, hardening, permissions, environments, and files

## 🚀 Usage

### Prerequisites

- Terraform / OpenTofu >= 1.11
- GitHub provider configured with organization admin permissions
- Organization layer deployed (recommended for teams and memberships)

### Basic Usage

**main.tf**
```hcl
module "project" {
  source = "gocloudLa/standard-platform/github//modules/project"
  # version = "{tag_specific_version}"

  metadata = local.metadata

  repository_parameters = {
    # Repository configuration
  }

  repository_defaults = {
    # Shared repository defaults
  }
}
```

**metadata.tf**
```hcl
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
| repository_parameters | Repository fleet configuration | `object` | `{}` | no |
| repository_defaults | Shared repository default parameters | `object` | `{}` | no |

## 📤 Outputs

| Name | Description |
|------|-------------|
| repositories | Map of created repositories keyed by name |
| branch_protection | Map of branch protection rules keyed by repository name |
| environments | Map of repository environments keyed by repository name |

## 🏷️ Resource Naming Convention

The platform uses metadata keys for consistent naming across layers:

- **Project Layer**: `{key.company}-{key.env}-{key.project}` (e.g., `dmc-prd-core`)

### Custom Naming Override

You can override the automatic naming by adding these optional fields to your metadata:

```hcl
locals {
  metadata = {
    # ... other metadata fields ...
    common_name_prefix = "dmc-prd"        # Override: dmc-prd
    common_name        = "dmc-prd-core"   # Override: dmc-prd-core
  }
}
```

## 🏷️ Resource Tags Convention

GitHub resources do not use AWS-style tags. Use metadata (`company`, `environment`, `project`, `layer`) for consistent naming and documentation across your Terraform workspace.

## 📋 Example Usage

See the [project example](../../examples/project) for a complete implementation example.

## 🤝 Contributing

We welcome contributions! Please see our [contributing guidelines](../../CONTRIBUTING.md) for more details.

## 🆘 Support

- 📧 **Email**: info@gocloud.la
- 🐛 Issues: [GitHub Issues](https://github.com/gocloudLa/terraform-github-standard-platform/issues)
