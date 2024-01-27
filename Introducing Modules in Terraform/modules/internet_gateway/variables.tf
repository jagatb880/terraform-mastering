# internet_gateway/variables.tf

variable "vpc_id" {
  description = "ID of the VPC to associate with the Internet Gateway"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "route_table_id" {
  description = "ID of the route table in the VPC"
  type        = string
}
