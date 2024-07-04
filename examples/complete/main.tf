provider "aws" {
  region = var.region
}

module "aws_key_pair" {
  source = "../../"

  generate_ssh_key = var.generate_ssh_key
  write_ssh_key    = var.write_ssh_key

  context = module.this.context
}
