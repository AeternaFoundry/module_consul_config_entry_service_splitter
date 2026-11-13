output "config_entry_service_splitters_id" {
  description = "Map of id values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.id }
}
output "config_entry_service_splitters_meta" {
  description = "Map of meta values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.meta }
}
output "config_entry_service_splitters_name" {
  description = "Map of name values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.name }
}
output "config_entry_service_splitters_namespace" {
  description = "Map of namespace values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.namespace }
}
output "config_entry_service_splitters_partition" {
  description = "Map of partition values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.partition }
}
output "config_entry_service_splitters_splits" {
  description = "Map of splits values across all config_entry_service_splitters, keyed the same as var.config_entry_service_splitters"
  value       = { for k, v in consul_config_entry_service_splitter.config_entry_service_splitters : k => v.splits }
}

