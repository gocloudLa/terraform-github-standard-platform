/*----------------------------------------------------------------------*/
/* Common |                                                             */
/*----------------------------------------------------------------------*/

variable "metadata" {
  type = any
}

/*----------------------------------------------------------------------*/
/* Organization | Variable Definition                                   */
/*----------------------------------------------------------------------*/
variable "organization_parameters" {
  type        = any
  description = "Organization parameters to configure organization settings, memberships, and webhooks"
  default     = {}
}

variable "organization_defaults" {
  type        = any
  description = "Organization default parameters to configure organization module"
  default     = {}
}

/*----------------------------------------------------------------------*/
/* Team | Variable Definition                                          */
/*----------------------------------------------------------------------*/

variable "team_parameters" {
  type        = any
  description = "Team parameters to configure teams, memberships, and repository permissions"
  default     = {}
}

variable "team_defaults" {
  type        = any
  description = "Team default parameters to configure team module"
  default     = {}
}