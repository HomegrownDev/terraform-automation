module "aws_key_pair" {
  source              = "cloudposse/key-pair/aws"
  version             = "0.18.3"
  for_each            = var.group
  name                = each.key
  ssh_public_key_path = "./${namespace}/${environment}/secrets"
  generate_ssh_key    = each.value.generate_ssh_key
  
  context = module.this.context
}