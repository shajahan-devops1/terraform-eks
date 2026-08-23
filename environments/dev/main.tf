module "aws-eks-VPC" {
  source      = "../../modules/01-vpc"
  project     = var.project
  environment = var.environment
}

module "aws-eks-SG" {
  source      = "../../modules/02-1-SG"
  project     = var.project
  environment = var.environment
  vpc_id      = module.aws-eks-VPC.vpc_id
  sg_name     = "${var.project}-${var.environment}-sg"
}

# module "aws-eks-SG-rules" {
#   source      = "../../modules/02-sg"
#   project     = var.project
#   environment = var.environment
# }

# module "aws-eks-cluster" {
#   source      = "../../modules/03-eks"
#   project     = var.project
#   environment = var.environment
# }

# module "aws-eks-bastion" {
#   source      = "../../modules/04-bastion"
#   project     = var.project
#   environment = var.environment
# }
