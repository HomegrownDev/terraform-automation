variable "group" {
  type = map(object({
    availability_zones   = optional(list(string))
    vpc_id               = optional(string)
    igw_id               = optional(string)
    ipv4_cidr_block      = optional(list(string))
    nat_gateway_enabled  = optional(bool)
    nat_instance_enabled = optional(bool)
    nat_instance_type    = optional(string)
    max_nats             = optional(number)
  }))
}