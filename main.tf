resource "google_healthcare_hl7_v2_store" "healthcare_hl7_v2_stores" {
  for_each = var.healthcare_hl7_v2_stores

  dataset                  = each.value.dataset
  name                     = each.value.name
  deletion_policy          = each.value.deletion_policy
  labels                   = each.value.labels
  reject_duplicate_message = each.value.reject_duplicate_message

  dynamic "notification_config" {
    for_each = each.value.notification_config != null ? [each.value.notification_config] : []
    content {
      pubsub_topic = notification_config.value.pubsub_topic
    }
  }

  dynamic "notification_configs" {
    for_each = each.value.notification_configs != null ? each.value.notification_configs : []
    content {
      filter       = notification_configs.value.filter
      pubsub_topic = notification_configs.value.pubsub_topic
    }
  }

  dynamic "parser_config" {
    for_each = each.value.parser_config != null ? [each.value.parser_config] : []
    content {
      allow_null_header  = parser_config.value.allow_null_header
      schema             = parser_config.value.schema
      segment_terminator = parser_config.value.segment_terminator
      version            = parser_config.value.version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

