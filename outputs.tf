output "rg_ids" {
    value = azurerm_resource_group.rgs.*.id
}