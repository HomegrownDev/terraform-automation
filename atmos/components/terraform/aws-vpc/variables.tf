variable "group" {
    type = map(object({
        ipv4_primary_cidr_block = optional(string)
        ipv4_cidr_block_association_timeouts = optional(object({
            create = string
            delete = string
        }))
        assign_generated_ipv6_cidr_block = optional(bool)
        default_security_group_deny_all = optional(bool)
        default_route_table_no_routes = optional(bool)
        default_network_acl_deny_all = optional(bool)
    }))
}