variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "sg_names" {
  type = list(string)

  default = [
    "eks_control_plane",
    "eks_node",
    "mongodb",
    "redis",
    "mysql",
    "rabbitmq",
    "public_alb",
    "bastion"
  ]
}