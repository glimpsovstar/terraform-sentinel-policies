module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "check-ec2-environment-tag" {
  source = "./check-ec2-environment-tag.sentinel"
  enforcement_level = "advisory"
}

##
#policy "require-most-recent-AMI-version" {
#  source = "./require-most-recent-AMI-version.sentinel"
#  enforcement_level = "advisory"
#}

##
policy "restrict-current-ec2-instance-type" {
  source = "./restrict-current-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}
##
policy "restrict-ingress-sg-rule-cidr-blocks" {
  source = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "advisory"
}
##
policy "restrict-ingress-sg-rule-ssh" {
  source = "./restrict-ingress-sg-rule-ssh.sentinel"
  enforcement_level = "advisory"
}