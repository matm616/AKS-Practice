resource "azurerm_resource_group" "aks_rg" {
  name     = "${var.environment}-aks-rg"
  location = var.location.id
}
