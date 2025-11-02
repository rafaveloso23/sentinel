# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

policy "secure-transfer-required-is-enabled" {
  source = "./azure/secure-transfer-required-is-enabled/secure-transfer-required-is-enabled.sentinel"
}
policy "default-network-access-rule-set-to-deny" {
  source = "./azure/default-network-access-rule-set-to-deny/default-network-access-rule-set-to-deny.sentinel"
}
policy "trusted-microsoft-services-is-enabled" {
  source = "./azure/trusted-microsoft-services-is-enabled/trusted-microsoft-services-is-enabled.sentinel"
}