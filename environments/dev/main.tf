module "aws-eks-VPC" {
  source      = "../../modules/01-vpc"
  project     = var.project
  environment = var.environment
}

module "aws-eks-SG" {
  source      = "../../modules/02-SG"
  project     = var.project
  environment = var.environment
  vpc_id      = module.aws-eks-VPC.vpc_id
  sg_name     = "${var.project}-${var.environment}-sg"
  depends_on  = [module.aws-eks-SG]
# }

# module "aws-eks-SG-rules" {
#   source      = "../../modules/03-sg-rules"
#   project     = var.project
#   environment = var.environment
#   depends_on  = [module.aws-eks-SG]
# }

# module "aws-eks-cluster" {
#   source      = "../../modules/04-eks"
#   project     = var.project
#   environment = var.environment
#   depends_on  = [module.aws-eks-VPC, module.aws-eks-SG, module.aws-eks-SG-rules]
# }

# module "aws-eks-bastion" {
#   source      = "../../modules/04-bastion"
#   project     = var.project
#   environment = var.environment
# }
