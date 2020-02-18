resource "azurerm_servicebus_queue" "servicebus_queue" {
  name                = var.servicebus_queue_name
  resource_group_name = var.resource_group_name
  namespace_name      = var.servicebus_namespace_name
  enable_partitioning = var.servicebus_queue_enable_partitioning
  max_delivery_count  = var.servicebus_queue_max_delivery_count
  lock_duration       = var.servicebus_queue_lock_duration
  requires_session    = var.servicebus_queue_requires_session
  dead_lettering_on_message_expiration = var.servicebus_queue_dead_lettering_on_message_expiration
}

resource "azurerm_servicebus_queue_authorization_rule" "servicebus_queue_authorization_rule" {
  count               = var.has_servicebus_queue_authorization_rule ? 1 : 0
  name                = var.servicebus_queue_authorization_rule_name
  namespace_name      = var.servicebus_namespace_name
  queue_name          = var.servicebus_queue_name
  resource_group_name = var.resource_group_name
  send                = var.servicebus_queue_authorization_rule_send
  listen              = var.servicebus_queue_authorization_rule_listen
  manage              = var.servicebus_queue_authorization_rule_manage
}