output "config_entry_service_splitters_id" {
  description = "Map of id values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no id are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_entry_service_splitters_meta" {
  description = "Map of meta values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no meta are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "config_entry_service_splitters_name" {
  description = "Map of name values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no name are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_entry_service_splitters_namespace" {
  description = "Map of namespace values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no namespace are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "config_entry_service_splitters_partition" {
  description = "Map of partition values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no partition are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "config_entry_service_splitters_splits" {
  description = "Map of splits values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters except keys with no splits are omitted"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.splits if v.splits != null && length(v.splits) > 0 }
}

