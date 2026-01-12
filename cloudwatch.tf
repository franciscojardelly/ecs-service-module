resource "aws_cloudwatch_log_group" "this" {
  name = format("%s/%s", var.cluster_name, var.service_name)

}