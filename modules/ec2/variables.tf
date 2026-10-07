variable "vpc_id" {
  type        = string
  description = "VPC ID passed from the VPC module"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID passed from the VPC module"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}



variable "public_key_path" {
  type        = string
  description = "Path to local SSH public key file"
}

variable "environment" {
  type        = string
  description = "Environment tag (e.g., dev, prod)"
  default     = "dev"
}

variable "custom_username" {
  type        = string
  description = "Custom SSH username"
  default     = "devuser"
}

variable "custom_password" {
  type        = string
  description = "Custom SSH password"
  sensitive   = true
}

