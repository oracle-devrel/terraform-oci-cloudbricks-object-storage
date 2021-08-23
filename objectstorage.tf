# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# objectstorage.tf
#
# Purpose: The following script defines the creation of an object storage
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/objectstorage_bucket


resource "oci_objectstorage_bucket" "Bucket" {
  access_type    = var.bucket_access_type
  auto_tiering   = var.auto_tiering
  compartment_id = local.compartment_id

  metadata = {
  }
  namespace             = local.namespace_id
  name                  = var.bucket_display_name
  object_events_enabled = var.object_events_enabled
  storage_tier          = var.storage_tier
  versioning            = var.versioning
}

