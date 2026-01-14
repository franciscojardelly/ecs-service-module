variable "service_name" {}

variable "region" {}

variable "cluster_name" {}

variable "vpc_id" {}

variable "private_subnets" {}

variable "service_cpu" {}

variable "service_port" {}

variable "service_memory" {}

variable "service_listener" {}

variable "service_task_execution_role" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "service_hosts" {
  type = list(string)
}

variable "environment_variables" {
  type = list(any)
}

variable "capabilities" {
  type = list(any)
}

variable "service_healthcheck" {
  type = map(any)
}

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

# Autoscaling Out de CPU

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

# Autoscaling IN de CPU
variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

### (Tracking CPU) - Esse parametro vc específica quanto de uso de CPU sua app vai manter de uso 
### Ex: Específicando 50% sua app vai escalar de forma que o consumo de CPU vai se manter em 50% 
variable "scale_tracking_cpu" {}

### tracking Requests
variable "alb_arn" {}

variable "scale_tracking_requests" {}