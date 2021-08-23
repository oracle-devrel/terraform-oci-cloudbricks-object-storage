# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# datasource.tf
#
# Purpose: The following script defines the lookup logic used in code to obtain pre-created or JIT-created resources in tenancy.


/********** Compartment and CF Accessors **********/
data "oci_identity_compartments" "COMPARTMENTS" {
  compartment_id            = var.tenancy_ocid
  compartment_id_in_subtree = true
  filter {
    name   = "name"
    values = [var.object_storage_instance_compartment_name]
  }
}

/********** Subnet Accessors **********/


data "oci_objectstorage_namespace" "NAMESPACE" {
  compartment_id = local.compartment_id
}

locals {

  # Compartment OCID Local Accessor
  compartment_id = lookup(data.oci_identity_compartments.COMPARTMENTS.compartments[0], "id")

  # Tenancy Namespace Local Accessor
  namespace_id = data.oci_objectstorage_namespace.NAMESPACE.namespace
}