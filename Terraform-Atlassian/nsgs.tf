# Create Network Security Group
resource "azurerm_network_security_group" "nsg1" {
  name                = "${var.serviceName}-${var.role1}_nsg"
  location            = var.location[0]
  resource_group_name = azurerm_resource_group.rg1.name

  tags = local.tags
}