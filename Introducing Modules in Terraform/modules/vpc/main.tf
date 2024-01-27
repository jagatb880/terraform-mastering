# modules/vpc/main.tf

resource "aws_vpc" "example_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "example_subnet" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
}

# terra_proj/vpc/main.tf

resource "aws_route_table" "example_route_table" {
  vpc_id = aws_vpc.example_vpc.id

}
