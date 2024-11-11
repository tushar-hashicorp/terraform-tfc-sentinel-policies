variable "tfe_organization" {
  description = "The TFE organization where Sentinel based policy sets will be created. These policies will run against all the workspaces present in the organization"
  type        = string
  default     = "team-rnd-india-test-org"
}

variable "policy_set_workspace_names" {
  description = "List of workspace names to scope the policy set to."
  type        = list(string)
  default     = [ "demo" ]
}

variable "name" {
  description = "Common suffix/prefix prepended/appended to all the resources getting created with this module."
  type        = string
  default     = "testing"
}