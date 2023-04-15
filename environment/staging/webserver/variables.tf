# Instance type
variable "instance_type" {
  default     = "t3.small"
  description = "Type of the instance"
  type        = string
}

# Variable to signal the current environment 
variable "env" {
  default     = "staging"
  type        = string
  description = "staging environment"
}

variable "cloud_private_ip" {
  default     = "172.31.72.219"
  type        = string
  description = "here is the private ip address of cloud 9"
}


variable "cloud_public_ip" {
  default     = "3.236.53.226"
  type        = string
  description = "here is the public ip address of cloud 9"
}

# Minimum Size for the auto scaling group based on environment
variable "min_size" {
  default = {
    "prod"    = "1"
    "staging" = "1"
    "dev"     = "1"
  }
  description = "Minimum Size for the auto scaling group"
  type        = map(string)
}

# MMaximum Size for the auto scaling group based on environment
variable "desired_size" {
  default = {
    "prod"    = "3"
    "staging" = "3"
    "dev"     = "2"
  }
  description = "Desired Capaicty for the auto scaling group"
  type        = map(string)
}

# Maximum Size for the auto scaling group based on environment
variable "max_size" {
  default = {
    "prod"    = "4"
    "staging" = "4"
    "dev"     = "4"
  }
  description = "Maximum Size for the auto scaling group"
  type        = map(string)
}