variable "resource_group_name" {  #r1 is used to differentiate from other resource groups
    type = string
    default = jenkins-tf-1 # default name for resource group
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

