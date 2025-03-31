resource "azurerm_resource_group" "a12" {
  name     = "seto-a12-rg"
  location = "canadacentral"
}

output "resource_group_name" {
  value = azurerm_resource_group.a12.name
  description = "The name of the resource group"
}

output "resource_group_location" {
  value = azurerm_resource_group.a12.location
  description = "The location of the resource group"
}