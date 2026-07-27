variable "vminfo" {}

resource "azurerm_network_interface" "nic" {
    for_each = var.vminfo
    name = each.value.nic_name
    location =each.value.nic_location
    resource_group_name = each.value.nic_rg_name

    ip_configuration {
      name = "internal"
      subnet_id = data.azurerm_subnet.subnet[each.key].id
      public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
      private_ip_address_allocation = "Dynamic"

    }
}

resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.vminfo
    name=each.value.vm_name
    resource_group_name = each.value.nic_rg_name
    location = each.value.nic_location
    size="Standard_F2"
    admin_username = each.value.admin_username
    admin_password =each.value.admin_password
    disable_password_authentication = false
    network_interface_ids = [azurerm_network_interface.nic[each.key].id]

os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}