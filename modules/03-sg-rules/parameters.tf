# resource "aws_ssm_parameter" "sg_id" {
#   for_each  = toset(var.sg_names)
#   name      = "/${var.project}/${var.environment}/${each.key}_sg_id"
#   type      = "String"
#   value     = aws_security_group.sg[each.key].id
#   overwrite = true
# }
