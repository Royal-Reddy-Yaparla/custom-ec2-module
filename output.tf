output "key_name" {
  value = module.key_pair.key_name
}

output "security_group" {
  value = module.security_group.security_group_id
}

output "public_IP" {
  value = module.ec2_instance.public_ip
}