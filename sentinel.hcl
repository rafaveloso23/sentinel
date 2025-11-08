# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
policy "enforce-no-modules" {
  source            = "./policies/common/enforce-no-modules.sentinel"
  enforcement_level = "advisory"  # Bloqueia o apply se violar
  params = {
    # Lista de workspaces ISENTOS da policy
    # Adicione workspaces que PODEM usar módulos
    exempt_workspaces = [
      #"teste-wks-rvs-sentinel"
    ]
    # Lista de projetos ISENTOS da policy
    # Adicione projetos completos que PODEM usar módulos
    exempt_projects = [
      #"rf-sandbox-tfc"
    ]
  }
}