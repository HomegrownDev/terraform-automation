module "subnets" {
  source               = "cloudposse/dynamic-subnets/aws"
  version              = "2.0.4"
  for_each             = var.group
  name                 = each.key
  availability_zones   = each.value.availability_zones
  vpc_id               = each.value.vpc_id
  igw_id               = [each.value.igw_id]
  ipv4_cidr_block      = each.value.ipv4_cidr_block
  nat_gateway_enabled  = each.value.nat_gateway_enabled
  nat_instance_enabled = each.value.nat_instance_enabled
  nat_instance_type    = each.value.nat_instance_type
  max_nats             = each.value.max_nats

  context = module.this.context
}