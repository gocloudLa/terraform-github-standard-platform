/*----------------------------------------------------------------------*/
/* Common |                                                             */
/*----------------------------------------------------------------------*/

variable "metadata" {
  type = any
}

/*----------------------------------------------------------------------*/
/* Repository | Variable Definition                                     */
/*----------------------------------------------------------------------*/
variable "repository_parameters" {
  type        = any
  description = "Repository parameters to configure repository fleet resources"
  default     = {}
}

variable "repository_defaults" {
  type        = any
  description = "Repository default parameters to configure repository fleet resources"
  default     = {}
}