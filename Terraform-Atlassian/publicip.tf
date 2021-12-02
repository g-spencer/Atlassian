resource "azurerm_public_ip" "vm1_publicip" {
  name                = "${local.vmName[0]}_pip"
  location            = var.location[0]
  resource_group_name = azurerm_resource_group.rg1.name
  allocation_method   = "Static"
  domain_name_label   = "siswiki-sis-tv"
  // domain_name_label   = local.vmName[0]
  tags                = local.tags
}

// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip