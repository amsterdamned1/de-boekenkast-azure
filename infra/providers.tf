resource "azurerm_resource_group" "main" {
  name     = "rg-boekenkast-dev"
  location = "<regio uit stap 1>"
  tags     = local.tags
}

resource "azurerm_static_web_app" "main" {
  name                = "swa-boekenkast-dev"
  resource_group_name = azurerm_resource_group.main.name
  location            = "centralus"
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = local.tags
}

locals {
  tags = {
    project     = "de-boekenkast"
    environment = "dev"
    managed_by  = "terraform"
  }
}
