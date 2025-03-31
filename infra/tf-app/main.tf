resource "azurerm_resource_group" "a12" {
  name     = "seto-a12-rg"
  location = "canadacentral"
}

resource "azurerm_virtual_network" "vnet" {
  name = "seto-a12-vnet"
  location = "canadacentral"
  resource_group_name = azurerm_resource_group.a12.name
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name = "seto-a12-subnet"
  resource_group_name = azurerm_resource_group.a12.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.1.0/24"]
}

output "resource_group_name" {
  value = azurerm_resource_group.a12.name
  description = "The name of the resource group"
}

output "resource_group_location" {
  value = azurerm_resource_group.a12.location
  description = "The location of the resource group"
}

