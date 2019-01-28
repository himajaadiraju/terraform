variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}

provider "oci" {
  region = "us-ashburn-1"
  tenancy_ocid     = "${var.tenancy_ocid}"
  user_ocid        = "${var.user_ocid}"
  fingerprint      = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
}

resource "oci_core_virtual_network" "VCN" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "VCN"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "VCN"
}

