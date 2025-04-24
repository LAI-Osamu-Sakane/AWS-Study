resource "aws_subnet" "main" {
  for_each = { for i in var.subnet_map_list : i.name => i }

  vpc_id = aws_vpc.main.id
  availability_zone = each.value.az_name
  cidr_block = each.value.cidr
  tags = {
    Name = join("-",[var.system_name, var.environment, each.value.name])
  }
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    name = join("-", [var.system_name, var.environment])
  }

}