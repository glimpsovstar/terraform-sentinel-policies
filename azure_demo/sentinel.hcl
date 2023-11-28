module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
  source = "./azure-functions/azure-functions.sentinel"
}

policy "restrict-inbound-source-address-prefix" {
  source = "./restrict-inbound-source-address-prefixes.sentinel"
  enforcement_level = "advisory"
}
##
policy "restrict-VM-sizing" {
  source = "./restrict-vm-size.sentinel"
  enforcement_level = "advisory"
}
##
policy "enforcing-mandatory-environment-tag" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}
##
