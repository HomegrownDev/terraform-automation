module "vpc" {
  source                  = "cloudposse/vpc/aws"
  version                 = "2.0.0"
  for_each = var.group
  name = each.key
  ipv4_primary_cidr_block = each.value.ipv4_primary_cidr_block 
  ipv4_cidr_block_association_timeouts = each.value.ipv4_cidr_block_association_timeouts
  assign_generated_ipv6_cidr_block = each.value.assign_generated_ipv6_cidr_block

  default_security_group_deny_all = each.value.default_security_group_deny_all
  default_route_table_no_routes   = each.value.default_route_table_no_routes
  default_network_acl_deny_all    = each.value.default_network_acl_deny_all

  context = module.this.context
}