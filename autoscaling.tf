resource "aws_appautoscaling_target" "this" {
  max_capacity = var.task_maximum
  min_capacity = var.task_minimum

  resource_id        = "service/${var.cluster_name}/${aws_ecs_service.this.name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"


}