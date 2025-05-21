resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                = "adf-traffic-manager"
  resource_group_name = azurerm_resource_group.rg_primary.name
  location            = "global"
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

resource "azurerm_traffic_manager_endpoint" "primary" {
  name                = "primary-endpoint"
  profile_name        = azurerm_traffic_manager_profile.tm_profile.name
  resource_group_name = azurerm_resource_group.rg_primary.name
  type                = "externalEndpoints"
  target              = "adf-central-instance.centralus.datafactory.azure.net"
  priority            = 1
}

resource "azurerm_traffic_manager_endpoint" "dr" {
  name                = "dr-endpoint"
  profile_name        = azurerm_traffic_manager_profile.tm_profile.name
  resource_group_name = azurerm_resource_group.rg_primary.name
  type                = "externalEndpoints"
  target              = "adf-east-instance.eastus.datafactory.azure.net"
  priority            = 2
}
