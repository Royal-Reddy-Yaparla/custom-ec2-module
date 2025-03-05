# EC2-variables
variable "ami" {
  default = "ami-01816d07b1128cd2d"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_tags" {
  default = {
    Name = "fusion"
    Project = "fusion"
    Component = "CICD"
    Managed_By = "Royal"
    Terraform = true
  }
}

# key-pair-variables 
variable "key_pair_name" {
  description = "key_pair_name"
  type        = string
}

# secuity_group-variables
variable "security_group_name" {
  default = "sample"
}

variable "security_group_description" {
  default = "Allowing SSH,HTTP and all traffic"
}

variable "security_group_tag" {
  default = {
    Name = "fusion"
    Project = "fusion"
    Component = "CICD"
    Managed_By = "Royal"
    Terraform = true
  }
}

variable "security_group_ingress" {
  default = {
    key1 = { # must  
        cidr_ipv4         = "0.0.0.0/0"
        from_port         = 22
        ip_protocol       = "tcp"
        to_port           = 22
    }
    key2 = { 
        cidr_ipv4         = "0.0.0.0/0"
        from_port         = 80
        ip_protocol       = "tcp"
        to_port           = 80
    }
    key3 = { # make sure all traffic is required
        cidr_ipv4         = "0.0.0.0/0"
        ip_protocol       = "-1"
    }
  }
}

variable "security_group_egress_config" {
  default = {
    egress_rule1 = {
        cidr_ipv4   = "0.0.0.0/0"
        ip_protocol = "-1"
    }
  }
}


