variable "default_tags" {
  default = {
    "Owner" = "Ashmit, Ish, Tarun, Ipsa, Aparna"
    "App"   = "Web"
  }
  type        = map(any)
  description = "The default tags"
}


variable "prefix" {
  default     = "Group17"
  type        = string
  description = "Name prefix"
}


variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
}


variable "vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC for Dev environment"
}



variable "public_subnet_cidrs" {
  default     = ["10.100.1.0/24", "10.100.2.0/24", "10.100.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}


variable "private_subnet_cidrs" {
  default     = ["10.100.4.0/24", "10.100.5.0/24", "10.100.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}



variable "instance_count" {
  default     = 2
  type        = string
  description = "Dev Environment Instances Count"
}


variable "type" {
  default     = "t3.micro"
  type        = string
  description = "Dev Environment Instances Type"
}
