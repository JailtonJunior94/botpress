resource "azurerm_kubernetes_cluster" "botpress_aks" {
  name                = "botpress-aks"
  location            = var.location
  resource_group_name = azurerm_resource_group.botpress_rg.name

  dns_prefix = "botpress-aks"
  sku_tier   = "Free"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_A2m_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
