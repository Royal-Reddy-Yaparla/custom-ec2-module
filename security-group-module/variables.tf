variable "security_group_config" {
  type = object({
    name = string
    description = string
    tags = map(string)
  })
}

variable "security_group_ingress_config" {
  type = map(object({
    cidr_ipv4 = string
    from_port = optional(number) 
    ip_protocol = string
    to_port = optional(number) 
  }))
}

variable "security_group_egress_config" {
  type = map(object({
    cidr_ipv4 = string
    ip_protocol = string
  }))
}