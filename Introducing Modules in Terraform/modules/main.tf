# main.tf

module "vpc_module" {
  source            = "./vpc"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
}

module "igw_module" {
  source         = "./internet_gateway"
  vpc_id         = module.vpc_module.vpc_id
  igw_name       = "example-igw"
  route_table_id = module.vpc_module.route_table_id
}

module "route_table_module" {
  source           = "./route_table"
  vpc_id           = module.vpc_module.vpc_id
  route_table_name = "example-route-table"
  subnet_id        = module.vpc_module.subnet_id
}

module "ec2_instance_module" {
  source        = "./ec2_instance"
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id     = module.vpc_module.subnet_id
  key_name      = "ubuntu-key"
  instance_name = "ExampleInstance"
}
