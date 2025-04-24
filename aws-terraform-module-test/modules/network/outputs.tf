output "aws_subnet_id" {
    value = { for i in var.subnet_map_list : i.name => aws_subnet.main[i.name].id }
}

output "vpc_id" {
    value = aws_vpc.main.id
}