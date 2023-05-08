variables "group" {
  type = map(object({
    ssh_key_pair                = optional(string)
    vpc_id                      = optional(string)
    security_groups             = optional(list(string))
    subnet                      = optional(string)
    associate_public_ip_address = optional(bool)
    additional_ips_count        = optional(number)
    ebs_volume_count            = optional(number)
    security_group_rules        = optional(map(object))
    ami                         = optional(string)
    ami_owner                   = optioanl(string)
  }))
}