locals {
  bastion_sg_id           = aws_security_group.sg["bastion"].id
  mongodb_sg_id           = aws_security_group.sg["mongodb"].id
  redis_sg_id             = aws_security_group.sg["redis"].id
  mysql_sg_id             = aws_security_group.sg["mysql"].id
  rabbitmq_sg_id          = aws_security_group.sg["rabbitmq"].id
  public_alb_sg_id        = aws_security_group.sg["public_alb"].id
  eks_control_plane_sg_id = aws_security_group.sg["eks_control_plane"].id
  eks_node_sg_id          = aws_security_group.sg["eks_node"].id
}
