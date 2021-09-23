resource "azurerm_subnet" "subnet1" {
  name                      = "${var.serviceName}-${var.environment}-${local.region[var.location[0]]}-sb-01"
  resource_group_name       = "network-${var.environment}-${local.region[var.location[0]]}-rg-1"
  virtual_network_name      = "${var.environment}-${local.region[var.location[0]]}-vn-01"
  address_prefixes            = [var.subnetPrefixes[var.location[0]]]
}