# route_table/variables.tf

variable "vpc_id" {
  description = "ID of the VPC to associate with the route table"
  type        = string
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet to associate with the route table"
  type        = string
}
