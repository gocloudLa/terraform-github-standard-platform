output "organization_settings" {
  description = "GitHub organization settings resource."
  value       = module.wrapper_organization.organization_settings
}

output "organization_webhooks" {
  description = "Map of organization webhooks."
  value       = module.wrapper_organization.organization_webhooks
}

output "memberships" {
  description = "Map of organization memberships."
  value       = module.wrapper_organization.memberships
}

output "teams" {
  description = "Map of created teams keyed by team name."
  value       = module.wrapper_team.teams
}

output "team_memberships" {
  description = "Map of team memberships keyed by team name."
  value       = module.wrapper_team.memberships
}

output "team_repository_permissions" {
  description = "Map of team repository permissions keyed by team name."
  value       = module.wrapper_team.repository_permissions
}
