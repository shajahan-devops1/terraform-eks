variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "sg_tags" {
  type    = map(any)
  default = {}
}

variable "sg_names" {
  type = list(any)
  default = [
    "mongodb", "redis", "mysql", "rabbitmq",
    #"catalogue", "user", "cart", "shipping", "payment",
    #"backend_alb",
    #"frontend",
    "public_alb",
    "bastion",
    "eks_control_plane",
    "eks_node",
    "jenkins", "jenkins_agent", "sonar"
    #"vpn"
  ]
}
