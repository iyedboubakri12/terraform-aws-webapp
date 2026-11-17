provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Project     = "terraform-aws-webapp"
      Environment = "dev"
      ManagedBy   = "terraform"
    }
  }
}

module "network" {
  source   = "../../modules/network"
  name     = var.name
  az_count = 2
}

module "web" {
  source             = "../../modules/web"
  name               = var.name
  vpc_id             = module.network.vpc_id
  subnet_id          = module.network.public_subnet_ids[0]
  container_image    = var.container_image
  container_port     = var.container_port
  allowed_http_cidrs = var.allowed_http_cidrs
}
