variable "resource_group_name" {  
    type = string
    default = "jenkins-tf-1" # default name for resource group
    description = "Name of the Resource Group"
}

variable "resource_group_location" {
    type = string
    default = "eastus"
    description = "Location of the Resource Group"
}

variable "vm_size"{
    type = string
    default = "Standard_B1s"
    description = "Size of the Virtual Machine"
}

variable "admin_username_vm" {
    type = string
    default = "adminuser"
    description = "Admin username for the Virtual Machine"
}

variable "vnet_cidr_address_space" {
    type = list(string)
    default = ["10.0.0.0/12"]
    description = "CIDR block for the Virtual Network"
}

variable "vnet_cidr_name" {
    type = string
    default = "jenkins-vnet"
    description = "Name of the Virtual Network"
}

variable "subnet_name" {
    type = string
    default = "jenkins-subnet"
    description = "Name of the Subnet"
}

variable "subnet_addr" {
  
}
