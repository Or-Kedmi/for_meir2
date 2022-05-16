provider "aws" {
  region = "eu-west-1"
}

locals {
  common_tags = {
    environment  = "tintin"
    name = "tomer"
  }
}

resource "aws_security_group" "my_sg" {
  name        = "mojo"
  description = "SG created from tomer.v service"

  tags = {
    Name = "jojo"
  }
}
