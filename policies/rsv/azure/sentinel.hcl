# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

policy "secure-transfer-required-is-enabled" {
  source = "./secure-transfer-required-is-enabled/secure-transfer-required-is-enabled.sentinel"
}
policy "default-network-access-rule-set-to-deny" {
  source = "./default-network-access-rule-set-to-deny/default-network-access-rule-set-to-deny.sentinel"
}
policy "trusted-microsoft-services-is-enabled" {
  source = "./trusted-microsoft-services-is-enabled/trusted-microsoft-services-is-enabled.sentinel"
}