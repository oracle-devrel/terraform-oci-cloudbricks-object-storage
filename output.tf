# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# output.tf
#
# Purpose: The following file defines the output mount target implementation

output "bucket" {
  description = "Bucket Object"
  value       = oci_objectstorage_bucket.Bucket
}