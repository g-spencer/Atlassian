# Output hostname and private IP for VM 1

output "vm1_hostname" {
  value = azurerm_virtual_machine.vm1.name
}

output "vm1_private_ip" {
  value = azurerm_network_interface.vm1_nic1.private_ip_address
}
