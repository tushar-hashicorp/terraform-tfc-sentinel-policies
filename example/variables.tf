variable "tfe_organization" {
  description = "The TFE organization where Sentinel based policy sets will be created. These policies will run against all the workspaces present in the organization"
  type        = string
  default = "<your-tfe-org>"
}

variable "policy_set_workspace_names" {
  description = "List of workspace names to scope the policy set to."
  type        = list(string)
  default = ["target_workspace_1"]
}

variable "name" {
  description = "Common suffix/prefix prepended/appended to all the resources getting created with this module."
  type        = string
  default     = "cis-1-2-0"
}

variable "policy_github_repository" {
  description = "The name of the GitHub repository where the policies reside. This name should not include the GitHub organization."
  type        = string
  default = "policy-library-aws-cis-v1.2.0-terraform"
}