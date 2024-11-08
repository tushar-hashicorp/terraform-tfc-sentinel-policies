module "cis_v1-2-0_policies" {
  source = "../pre-written-policy"

  name                                 = var.name
  policy_github_repository             = var.policy_github_repository
  tfe_organization                     = var.tfe_organization
  policy_set_workspace_names           = var.policy_set_workspace_names
}