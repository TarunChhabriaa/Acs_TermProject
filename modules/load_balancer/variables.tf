# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Ashmit, Ish, Tarun, Ipsa, Aparna"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  default     = "Group17"
  type        = string
  description = "Name prefix"
}


variable "sg_id" {
  type        = string
  description = "Load balancer security group id"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
}
