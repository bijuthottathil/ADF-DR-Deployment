output "primary_adf_name" {
  value = azurerm_data_factory.adf_primary.name
}

output "dr_adf_name" {
  value = azurerm_data_factory.adf_dr.name
}

output "traffic_manager_dns" {
  value = azurerm_traffic_manager_profile.tm_profile.fqdn
}
