module "vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  version        = "3.13.0"
  name           = "test_ecs_provisioning"
  cidr           = "10.0.0.0/16"
  azs            = ["us-east-2a", "us-east-2b", "us-east-2c"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  tags = {
    "env"       = "dev"
    "createdBy" = "sankar"
  }

}

data "aws_vpc" "main" {
  id = module.vpc.vpc_id
}
