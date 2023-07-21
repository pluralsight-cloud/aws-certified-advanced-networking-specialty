module "vpc" {
  source                                      = "cn-terraform/networking/aws"
  name_prefix                                 = "ans"
  vpc_cidr_block                              = "192.168.0.0/16"
  availability_zones                          = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  public_subnets_cidrs_per_availability_zone  = ["192.168.0.0/19", "192.168.32.0/19", "192.168.64.0/19", "192.168.96.0/19"]
  private_subnets_cidrs_per_availability_zone = ["192.168.128.0/19", "192.168.160.0/19", "192.168.192.0/19", "192.168.224.0/19"]
}

module "test" {
  source              = "./modules/fargate"
  name_prefix         = "ans"
  vpc_id              = module.vpc.vpc_id
  container_image     = "hello-world"
  container_name      = "ans"
  public_subnets_ids  = module.vpc.public_subnets_ids
  private_subnets_ids = module.vpc.private_subnets_ids
}
