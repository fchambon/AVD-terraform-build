variable "rg_name" {
    description = "Resource Group name"
    type = string
}

variable "location" {
    description = "Vnet location"
    type = string
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-VNet"
  address_space       = var.vnet_range
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.prefix}-sub"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_range
}

