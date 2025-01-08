variable "ecs_region" {
  description = "ECS cluster region"
  type        = string
  default     = "us-east-1"
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type        = string
  default     = "daus-ecs"
}

variable "ecs_service_name" {
  description = "ECS service name"
  type        = string
  default     = "daus-ecs-service"
}

variable "ecs_container_name" {
  description = "ECS container name"
  type        = string
  default     = "daus-ecs-container"
}

variable "ecs_container_port" {
  description = "ECS container port"
  type        = number
  default     = 3000
}

variable "ecs_security_group_name" {
  description = "ECS security group name"
  type        = string
  default     = "daus-ecs-sg"
}
