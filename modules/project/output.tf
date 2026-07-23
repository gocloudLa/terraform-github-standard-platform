output "repositories" {
  description = "Map of created repositories keyed by name."
  value       = module.wrapper_repository.repositories
}

output "branch_protection" {
  description = "Map of branch protection rules keyed by repository name."
  value       = module.wrapper_repository.branch_protection
}

output "environments" {
  description = "Map of repository environments keyed by repository name."
  value       = module.wrapper_repository.environments
}
