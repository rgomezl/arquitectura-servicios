
module "vpc" {
  source                  = "./modules/vpc"
  vpc_cidr                = "10.0.0.0/16"
  public_subnet_cidr_a    = var.public_subnet_cidr_a
  public_subnet_cidr_b    = var.public_subnet_cidr_b
  az_a                    = var.az_a
  az_b                    = var.az_b
  name_prefix             = var.name_prefix
}

module "sg_rds" {
  source         = "./modules/sg_rds"
  vpc_id         = module.vpc.vpc_id
  allowed_cidrs  = [var.allowed_ip]
  name_prefix    = var.name_prefix
}

module "rds" {
  source             = "./modules/rds"
  name_prefix        = var.name_prefix
  db_name            = var.db_name
  db_username        = var.db_username
  db_password        = var.db_password
  subnet_ids         = [module.vpc.public_subnet_a_id, module.vpc.public_subnet_b_id]
  security_group_id  = module.sg_rds.rds_sg_id
}

module "ec2" {
  source             = "./modules/ec2"
  name_prefix        = var.name_prefix
  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = module.vpc.public_subnet_a_id
  vpc_id             = module.vpc.vpc_id
  allowed_ssh_cidrs  = [var.allowed_ip]
}
