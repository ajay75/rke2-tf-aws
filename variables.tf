variable "tfuser" {
  description = "Adds your name to the resources"
  type        = string
  default     = "team"
}

variable "cluster_name" {
  type    = string
  default = "k8s-cluster"
}

variable "region" {
  type    = string
  default = "us-gov-east-1"
}

variable "os" {
  type        = string
  description = "centOS7.9"
  default     = "centos7"
}

// VPC CIDR

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

// Subnet CIDRs

variable "private_subnet_1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "public_subnet_1_cidr" {
  type    = string
  default = "10.0.11.0/24"
}

variable "public_subnet_2_cidr" {
  type    = string
  default = "10.0.12.0/24"
}

variable "public_ssh_key" {
  type = string
}

variable "k3s_server_count" {
  type    = number
  default = 3
}

variable "k3s_server_size" {
  type    = string
  default = "t2.xlarge"
}

variable "k3s_agent_count" {
  type    = number
  default = 3
}

variable "k3s_agent_size" {
  type    = string
  default = "t2.xlarge"
}

variable "amis" {
  description = "List of amis and default users by region"
  type = map(map(object({
    ami  = string
    user = string
  })))
  default = {
    "us-gov-east-1" = {
      "centos7" = {
        ami  = "ami-0192d580722c594cc"
        user = "centos"
      }
    }   
  }
}

variable "is_public" {
  description = "pub nodes get pub id"
  type        = bool
}