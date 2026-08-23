resource "aws_ssm_parameter" "sg_id" {
  for_each = aws_security_group.sg

  name      = "/${var.project}/${var.environment}/${each.key}_sg_id"
  type      = "String"
  value     = each.value.id
  overwrite = true
}