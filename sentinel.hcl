# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

policy "secure-transfer-required-is-enabled" {
  source = "./policies/rsv/azure/secure-transfer-required-is-enabled/secure-transfer-required-is-enabled.sentinel"
}
policy "default-network-access-rule-set-to-deny" {
  source = "./policies/rsv/azure/default-network-access-rule-set-to-deny/default-network-access-rule-set-to-deny.sentinel"
}
policy "trusted-microsoft-services-is-enabled" {
  source = "./policies/rsv/azure/trusted-microsoft-services-is-enabled/trusted-microsoft-services-is-enabled.sentinel"
}
policy "blob-public-access-level-set-to-private" {
  source = "./policies/rvs/azure/blob-public-access-level-set-to-private/blob-public-access-level-set-to-private.sentinel"
}
policy "queue-logging-is-enabled" {
  source = "./policies/rvs/azure/queue-logging-is-enabled/queue-logging-is-enabled.sentinel"
}

policy "enforce-no-modules" {
  source            = "./policies/common/enforce-no-modules.sentinel"
  enforcement_level = "hard-mandatory"  # Bloqueia o apply se violar
  description = "Ensures no Terraform modules (public or private) are used in root module. Exceptions can be granted per workspace/project."
  params = {
    # Lista de workspaces ISENTOS da policy
    # Adicione workspaces que PODEM usar módulos
    exempt_workspaces = [
      #"teste-wks-rvs-sentinel"
    ]
    # Lista de projetos ISENTOS da policy
    # Adicione projetos completos que PODEM usar módulos
    exempt_projects = [
      "rf-sandbox-tfc"
    ]
  }
}