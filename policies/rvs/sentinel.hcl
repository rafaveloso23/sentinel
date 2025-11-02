# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
policy "blob-public-access-level-set-to-private" {
  source = "./rvs/azure/blob-public-access-level-set-to-private/blob-public-access-level-set-to-private.sentinel"
}
policy "queue-logging-is-enabled" {
  source = "./rvs/azure/queue-logging-is-enabled/queue-logging-is-enabled.sentinel"
}