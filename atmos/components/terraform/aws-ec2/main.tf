module "ec2_instance" {
  source                      = "cloudposse/ec2-instance/aws"
  version                     = "0.47.1"
  for_each                    = var.group
  name                        = each.key
  ssh_key_pair                = each.value.ssh_key_pair
  vpc_id                      = each.value.vpc_id
  security_groups             = each.value.security_groups
  subnet                      = each.value.subnet
  associate_public_ip_address = each.value.associate_public_ip_address
  additional_ips_count        = each.value.additional_ips_count
  ebs_volume_count            = each.value.ebs_volume_count
  security_group_rules        = each.value.security_group_rules
  ami                         = each.value.ami
  ami_owner                   = each.value.ami_owner

  context = module.this.context
}