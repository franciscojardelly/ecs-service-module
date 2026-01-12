resource "aws_ecr_repository" "this" {
  name         = format("%s/%s", var.cluster_name, var.service_name)
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}