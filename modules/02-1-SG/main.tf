resource "aws_security_group" "sg" {
  for_each = toset(var.sg_names)

  name        = "${var.project}-${var.environment}-${each.key}"
  description = "Security group for ${each.key}"
  vpc_id      = var.vpc_id

  tags = {
    Name        = "${var.project}-${var.environment}-${each.key}"
    Project     = var.project
    Environment = var.environment
  }
}