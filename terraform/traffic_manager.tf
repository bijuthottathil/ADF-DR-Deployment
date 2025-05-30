resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                = "adf-traffic-manager"
  resource_group_name = azurerm_resource_group.rg_primary.name
  traffic_routing_method = "Priority"

  dns_config {
    relative_name = "adfdr"
    ttl           = 30
  }

  monitor_config {
    protocol = "HTTPS"
    port     = 443
    path     = "/health"
  }
}

resource "azurerm_traffic_manager_external_endpoint" "primary" {
  name             = "primary-endpoint"
  profile_id       = azurerm_traffic_manager_profile.tm_profile.id
  target           = "adf-central-instance.centralus.datafactory.azure.net"
  endpoint_location = "Central US"
  priority         = 1
}

resource "azurerm_traffic_manager_external_endpoint" "dr" {
  name             = "dr-endpoint"
  profile_id       = azurerm_traffic_manager_profile.tm_profile.id
  target           = "adf-east-instance.eastus.datafactory.azure.net"
  endpoint_location = "East US"
  priority         = 2
}
