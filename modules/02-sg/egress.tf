# resource "aws_vpc_security_group_egress_rule" "eks_node" {
#   security_group_id = aws_security_group.sg["eks_node"].id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1"
# }
