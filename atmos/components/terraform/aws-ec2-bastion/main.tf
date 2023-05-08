module "ec2_bastion" {
  source   = "cloudposse/ec2-bastion-server/aws"
  version  = "0.30.1"
  for_each = var.group
  name     = each.key

  enabled                     = each.value.enabled
  instance_type               = each.value.bastion_instance_type
  security_groups             = each.value.security_groups
  subnets                     = each.value.subnets
  key_name                    = each.value.key_name
  user_data                   = each.value.user_data
  vpc_id                      = each.value.vpc_id
  associate_public_ip_address = each.value.associate_public_ip_address
  zone_id                     = each.value.zone_id

  context = module.this.context
}