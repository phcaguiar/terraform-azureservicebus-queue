# Common variables

variable "resource_group_name" {
  description = "The resource group name of the service bus."
}

variable "servicebus_queue_name" {
  description = "The service bus queue name." 
}

variable "servicebus_namespace_name" {
  description = "The service bus namespace name." 
}

# Variables of the service bus queue

variable "servicebus_queue_enable_partitioning" {
  description = "Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Defaults to false for Basic and Standard. For Premium, it MUST be set to true."
  default     = "false"
}

variable "servicebus_queue_max_delivery_count" {
  description = "Integer value which controls when a message is automatically deadlettered. Defaults to 10."
  default     = "10"
}

variable "servicebus_queue_lock_duration" {
  description = "Boolean flag which controls whether the Queue requires sessions. Defaults to false."
  default     = "false"
}

variable "servicebus_queue_requires_session" {
  description = "Boolean flag which controls whether the Queue requires sessions. Defaults to false."
  default     = "false"
}

variable "servicebus_queue_dead_lettering_on_message_expiration" {
  description = "Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false."
  default     = "false"
}

# Variables of the service bus queue authorization rule

variable "has_servicebus_queue_authorization_rule" {
  description = "If true, the module will create service bus queue authorization rule. Otherwise they won't be created."    
  default = "false"
}

variable "servicebus_queue_authorization_rule_name" {
  description = "The name of the service bus authorization rule."
}

variable "servicebus_queue_authorization_rule_send" {
  description = "Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to false."
  default     = "false"
}

variable "servicebus_queue_authorization_rule_listen" {
  description = "Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to false."
  default     = "false"
}

variable "servicebus_queue_authorization_rule_manage" {
  description = "Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is true - both listen and send must be too. Defaults to false."
  default     = "false"
}