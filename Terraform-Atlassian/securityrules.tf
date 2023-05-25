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
  destination_address_prefixes = ["10.135.33.88","115.146.167.190","115.146.167.191","115.146.167.192","115.146.167.194","115.146.167.198","162.241.224.227","178.160.202.158","18.139.55.201","203.177.46.178","206.131.198.11","206.131.198.14","43.198.107.152","8.222.200.90","8.222.210.163"]
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