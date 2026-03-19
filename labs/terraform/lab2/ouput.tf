output "vm_name" {
  description = "The name of the created virtual machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip_address" {
  description = "The public IP address of the created virtual machine"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "network_interface_name" {
  description = "The name of the network interface attached to the virtual machine"
  value       = azurerm_network_interface.nic.name
}