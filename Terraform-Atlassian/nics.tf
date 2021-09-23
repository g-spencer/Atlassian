# Create network interface for VM 1
resource "azurerm_network_interface" "vm1_nic1" {
  name                = "${local.vmName[0]}_nic01"
  location            = var.location[0]
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "${local.vmName[0]}_nic01_ip"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address            = var.vmPrivateIpAddress[0]
    private_ip_address_allocation = "static"
  }

  tags = local.tags
}
