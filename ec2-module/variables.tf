variable "ec2_config" {
  type = object({
    ami = string
    instance_type = string
    key_name  = string
    vpc_security_group_ids = list(string)
    tags = map(string)
  })
}