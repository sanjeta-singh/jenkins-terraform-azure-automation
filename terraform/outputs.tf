output "resource_group_name" {
  description = "Name of the created Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Location of the Resource Group"
  value       = azurerm_resource_group.rg.location
}

output "virtual_network_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.vnet_dev.name
}

output "virtual_network_address_space" {
  description = "Address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet_dev.address_space
}

output "subnet_name" {
  description = "Name of the Subnet"
  value       = azurerm_subnet.subnet_dev.name
}

output "subnet_address_space" {
  description = "Address space of the Subnet"
  value       = azurerm_subnet.subnet_dev.address_prefixes
}
