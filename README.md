# GitHub Standard Platform Terraform module

[![Latest Release](https://img.shields.io/github/v/release/gocloudLa/terraform-github-standard-platform.svg?style=for-the-badge)](https://github.com/gocloudLa/terraform-github-standard-platform/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/gocloudLa/terraform-github-standard-platform.svg?style=for-the-badge)](https://github.com/gocloudLa/terraform-github-standard-platform/commits/main)
[![Terraform Registry](https://img.shields.io/badge/Terraform-Registry-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://registry.terraform.io/modules/gocloudLa/standard-platform/github)

## 🚀 Enterprise-Ready GitHub Organization Platform

**A battle-tested GitHub platform for managing organizations, teams, and repository fleets as code.**

Built by GoCloud's team of platform engineers, this module provides everything you need to deploy production-ready GitHub governance — organization settings, teams, and hardened repositories — with consistent defaults and clear layering.

### ✨ Why Choose Our Standard Platform?

- **🏗️ Layered Architecture**: Two distinct layers (Organization → Project) for governance and repository fleets
- **🔧 Wrapper Modules**: Pre-configured integrations through our battle-tested GitHub wrapper modules
- **🛡️ Security by Design**: Branch protection, Dependabot, secret scanning, and least-privilege defaults built-in
- **👥 Team Governance**: Opinionated teams, memberships, and repository permission grants
- **📦 Repository Fleet**: Create and harden many repositories with shared defaults and per-repo overrides
- **📈 Production Ready**: Patterns used by GoCloud to manage real GitHub organizations at scale
- **⚡ Fast Deployment**: Stand up org + teams + repos with proven Terraform configurations
- **🎯 Terraform Registry**: Designed for Terraform Registry distribution and easy integration

### 🏆 Trusted by Leading Companies

Our platform patterns power GitHub governance for companies ranging from startups to enterprises, covering everything from simple org setups to large repository fleets with strict branch protection and CI requirements.

## Usage

Please refer to the GitHub published [Organization best practices](https://docs.github.com/en/organizations) for up-to-date guidance on GitHub administration.

### Organization Layer

Creates GitHub organization settings, memberships, and teams. Module instantiation is once per organization.

📖 **[View Organization Module Documentation](modules/organization/README.md)**

```hcl
module "organization" {
  source = "gocloudLa/standard-platform/github//modules/organization"

  metadata = local.metadata

  organization_parameters = {
    # Organization configuration
  }

  team_parameters = {
    # Team configuration
  }
}
```

### Project Layer

Creates GitHub repositories with shared defaults for visibility, merge policy, branch protection, permissions, environments, secrets, variables, and seeded files.

📖 **[View Project Module Documentation](modules/project/README.md)**

```hcl
module "project" {
  source = "gocloudLa/standard-platform/github//modules/project"

  metadata = local.metadata

  repository_parameters = {
    # Repository configuration
  }

  repository_defaults = {
    # Shared repository defaults
  }
}
```

## Authors

Module is maintained by [GoCloud Team](https://github.com/gocloudLa) with help from [these awesome contributors](https://github.com/gocloudLa/terraform-github-standard-platform/graphs/contributors).

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.11.1 |
| github | ~> 6.10 |

## Providers

| Name | Version |
|------|---------|
| github | ~> 6.10 |

## License

Apache-2.0 Licensed. See [LICENSE](LICENSE).

## 🤝 Contributing

We welcome contributions! Please see our [contributing guidelines](CONTRIBUTING.md) for more details.

## 🆘 Support

- 📧 **Email**: info@gocloud.la
- 🐛 Issues: [GitHub Issues](https://github.com/gocloudLa/terraform-github-standard-platform/issues)

## 🧑‍💻 About

We are focused on Cloud Engineering, DevOps, and Infrastructure as Code.
We specialize in helping companies design, implement, and operate secure and scalable cloud-native platforms.

- 🌎 [www.gocloud.la](https://www.gocloud.la)
- ☁️ AWS Advanced Partner (Terraform, DevOps, GenAI)
- 📫 Contact: info@gocloud.la

---

**Made with ❤️ by the GoCloud Team**
