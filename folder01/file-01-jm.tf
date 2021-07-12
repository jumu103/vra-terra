variable "vm_name" {
  type        = string
  description = "VM Name"
}


provider "vsphere" {

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "pDatacenter-1"
}

data "vsphere_datastore" "datastore" {
  name          = "ds.nfs01"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}


