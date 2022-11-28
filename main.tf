data "azurerm_subscription" "current" {
}

terraform {
  required_version = ">= 1.2.0"
  required_providers {
    azurerm = ">= 3.29.0"
  }
}

resource "random_id" "server" {
  byte_length = 8
}

output "hex" {
  value = random_id.server.hex
}
