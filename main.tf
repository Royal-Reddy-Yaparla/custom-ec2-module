module "ec2_instance" {
  source = "./ec2-module"
  ec2_config = {
    ami = var.ami
    instance_type = var.instance_type
    key_name = module.key_pair.key_name
    vpc_security_group_ids = [module.security_group.security_group_id]
    tags = var.ec2_tags
  }
}

module "key_pair" {
  source = "./key-pair-module"
  key_pair_name = "${var.ec2_tags.Name}.pem"
}

module "security_group" {
  source = "./security-group-module"
  security_group_config = {
    name = var.security_group_name
    description = var.security_group_description
    tags = var.security_group_tag
  }
  security_group_ingress_config = var.security_group_ingress

  security_group_egress_config = var.security_group_egress_config
}