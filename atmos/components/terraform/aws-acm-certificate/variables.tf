variables "group" {
  domain_name                       = optional(string)
  process_domain_validation_options = optional(bool)
  ttl                               = optional(number)
  subject_alternative_names         = optional(list(string))
  zone_id                           = optional(string)
}