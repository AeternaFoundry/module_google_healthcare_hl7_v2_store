variable "healthcare_hl7_v2_stores" {
  description = <<EOT
Map of healthcare_hl7_v2_stores, attributes below
Required:
    - dataset
    - name
Optional:
    - deletion_policy
    - labels
    - reject_duplicate_message
    - notification_config (block):
        - pubsub_topic (required)
    - notification_configs (block):
        - filter (optional)
        - pubsub_topic (required)
    - parser_config (block):
        - allow_null_header (optional)
        - schema (optional)
        - segment_terminator (optional)
        - version (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset                  = string
    name                     = string
    deletion_policy          = optional(string)
    labels                   = optional(map(string))
    reject_duplicate_message = optional(bool)
    notification_config = optional(object({
      pubsub_topic = string
    }))
    notification_configs = optional(list(object({
      filter       = optional(string)
      pubsub_topic = string
    })))
    parser_config = optional(object({
      allow_null_header  = optional(bool)
      schema             = optional(string)
      segment_terminator = optional(string)
      version            = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.healthcare_hl7_v2_stores : (
        v.parser_config == null || (v.parser_config.schema == null || (can(jsondecode(v.parser_config.schema))))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

