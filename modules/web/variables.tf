variable "name" {
  description = "Prefix used in resource names and tags."
  type        = string
}

variable "vpc_id" {
  description = "VPC in which the instance runs."
  type        = string
}

variable "subnet_id" {
  description = "Public subnet for the instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type (t3.micro is free-tier eligible in most regions)."
  type        = string
  default     = "t3.micro"
}

variable "container_image" {
  description = "Public container image to run."
  type        = string
}

variable "container_port" {
  description = "Port the container listens on."
  type        = number
  default     = 8080
}

variable "allowed_http_cidrs" {
  description = "CIDRs allowed to reach port 80."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "detailed_monitoring" {
  description = "Enable 1-minute CloudWatch metrics (extra cost)."
  type        = bool
  default     = false
}
