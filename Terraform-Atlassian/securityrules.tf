# Create Security Rules

resource "azurerm_network_security_rule" "secrule1" {
  name                        = "${var.serviceName}-${var.role1}_nsg_${var.protocol[0]}-allow-in"
  priority                    = 111
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.protocolPort[var.protocol[0]]
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "secrule2" {
  name                        = "${var.serviceName}-${var.role1}_nsg_${var.protocol[1]}-allow-in"
  priority                    = 121
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.protocolPort[var.protocol[1]]
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "secrule3" {
  name                        = "${var.serviceName}-${var.role1}_nsg-deny-out-jirad2"
  priority                    = 131
  direction                   = "Outbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.135.33.88"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "secrule4" {
  name                        = "${var.serviceName}-${var.role1}_nsg_${var.protocol[2]}-allow-in"
  priority                    = 141
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.protocolPort[var.protocol[2]]
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

/*
resource "azurerm_network_security_rule" "secrule3" {
  name                        = "${var.serviceName}-${var.role1}_nsg_${var.protocol[2]}-allow-in"
  priority                    = 131
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.protocolPort[var.protocol[2]]
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}
*/