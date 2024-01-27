# route_table/main.tf

resource "aws_route_table" "example_route_table" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "example_association" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.example_route_table.id
}
