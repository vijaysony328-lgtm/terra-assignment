
variable "resource_names" {}

resource "azurerm_resource_group" "rg_block" {

  for_each = var.resource_names

  name     = each.value.name
  location = each.value.location
}
