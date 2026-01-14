resource "aws_appautoscaling_policy" "cpu_tracking" {

  count = var.scale_type == "cpu_tracking" ? 1 : 0

  name               = format("%s-%s-cpu-tracking", var.cluster_name, var.service_name)
  resource_id        = aws_appautoscaling_target.this.resource_id
  service_namespace  = aws_appautoscaling_target.this.service_namespace
  scalable_dimension = aws_appautoscaling_target.this.scalable_dimension

  policy_type = "TargetTrackingScaling"

  target_tracking_scaling_policy_configuration {
    target_value       = var.scale_tracking_cpu
    scale_in_cooldown  = var.scale_in_cooldown
    scale_out_cooldown = var.scale_out_cooldown

    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }
  }
}