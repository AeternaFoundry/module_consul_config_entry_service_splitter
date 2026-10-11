resource "consul_config_entry_service_splitter" "config_entry_service_splitters" {
  for_each = var.config_entry_service_splitters

  name      = each.value.name
  meta      = each.value.meta
  namespace = each.value.namespace
  partition = each.value.partition

  dynamic "splits" {
    for_each = each.value.splits
    content {
      namespace = splits.value.namespace
      partition = splits.value.partition
      dynamic "request_headers" {
        for_each = splits.value.request_headers != null ? [splits.value.request_headers] : []
        content {
          add    = request_headers.value.add
          remove = request_headers.value.remove
          set    = request_headers.value.set
        }
      }
      dynamic "response_headers" {
        for_each = splits.value.response_headers != null ? [splits.value.response_headers] : []
        content {
          add    = response_headers.value.add
          remove = response_headers.value.remove
          set    = response_headers.value.set
        }
      }
      service        = splits.value.service
      service_subset = splits.value.service_subset
      weight         = splits.value.weight
    }
  }
}

