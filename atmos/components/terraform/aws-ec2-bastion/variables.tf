variable "group" {
  type = map(object({
    enabled                     = optional(bool)
    instance_type               = optional(string)
    security_groups             = optional(list(string))
    subnets                     = optional(list(string))
    key_name                    = optional(string)
    user_data                   = optional(string)
    vpc_id                      = optional(string)
    associate_public_ip_address = optional(bool)
    zone_id                     = optional(string)
  }))
}