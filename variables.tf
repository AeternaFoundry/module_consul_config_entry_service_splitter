variable "config_entry_service_splitters" {
  description = <<EOT
Map of config_entry_service_splitters, attributes below
Required:
    - name
    - splits (block):
        - namespace (optional)
        - partition (optional)
        - request_headers (optional, block):
            - add (optional)
            - remove (optional)
            - set (optional)
        - response_headers (optional, block):
            - add (optional)
            - remove (optional)
            - set (optional)
        - service (required)
        - service_subset (optional)
        - weight (required)
Optional:
    - meta
    - namespace
    - partition
EOT

  type = map(object({
    name      = string
    meta      = optional(map(string))
    namespace = optional(string)
    partition = optional(string)
    splits = list(object({
      namespace = optional(string)
      partition = optional(string)
      request_headers = optional(object({
        add    = optional(map(string))
        remove = optional(list(string))
        set    = optional(map(string))
      }))
      response_headers = optional(object({
        add    = optional(map(string))
        remove = optional(list(string))
        set    = optional(map(string))
      }))
      service        = string
      service_subset = optional(string)
      weight         = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.config_entry_service_splitters : (
        length(v.splits) >= 1
      )
    ])
    error_message = "Each splits list must contain at least 1 items"
  }
}

