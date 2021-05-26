variable "aws_region" {
  default = "us-east-1"
}
variable "image_name" {
  default = "cardio_deeplearning"
}

variable "container_engine" {
  default = "docker"
}

variable "container_name" {
    default = "cardio"
}

variable "cluster_name" {
    default = "cardio_cluster"
}

variable "service_name" {
    default = "cardio_service"
}

variable "port" {
    default = 80
}