module "acm_request_certificate" {
  source   = "cloudposse/acm-request-certificate/aws"
  version  = "0.17.0"
  for_each = var.group

  name                              = each.key
  domain_name                       = each.value.domain_name
  process_domain_validation_options = each.value.process_domain_validation_options
  ttl                               = each.value.ttl
  subject_alternative_names         = each.value.subject_alternative_names
  zone_id                           = each.value.zone_id

  context = module.this.context
}