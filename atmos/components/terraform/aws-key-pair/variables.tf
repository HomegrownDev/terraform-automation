variable "group" {
  type = map(object({
    generate_ssh_key    = optional(bool)
  }))
}