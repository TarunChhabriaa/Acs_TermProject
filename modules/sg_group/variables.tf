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


variable "cloud_private_ip" {
  default     = "172.31.72.219"
  type        = string
  description = "here is the private ip address of the cloud 9 env"
}


variable "cloud_public_ip" {
  default     = "3.236.53.226"
  type        = string
  description = "here is the public ip address of the cloud 9 env"
}



# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
}