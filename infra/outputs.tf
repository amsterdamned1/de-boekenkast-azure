output "site_url" {
  value = azurerm_static_web_app.main.default_host_name
}

output "deployment_token" {
  value     = azurerm_static_web_app.main.api_key
  sensitive = true
}
