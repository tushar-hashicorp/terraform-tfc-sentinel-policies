variable "policy_github_repository" {
  description = "The name of the GitHub repository where the policies reside. This name should not include the GitHub organization."
  type        = list(string)
  default     = [ "policy-library-cis-aws-cloudtrail-terraform", "policy-library-aws-networking-terraform" ] 
}

module "cis_v1-2-0_policies" {
  source = "./pre-written-policy"

  for_each                             = { for idx, value in var.policy_github_repository : idx => value }

  name                                 = "${var.name}-${each.key}"
  policy_github_repository             = each.value
  tfe_organization                     = var.tfe_organization
  policy_set_workspace_names           = var.policy_set_workspace_names
}