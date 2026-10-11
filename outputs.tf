output "healthcare_hl7_v2_stores_id" {
  description = "Map of id values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no id are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_hl7_v2_stores_dataset" {
  description = "Map of dataset values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no dataset are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.dataset if v.dataset != null && length(v.dataset) > 0 }
}
output "healthcare_hl7_v2_stores_deletion_policy" {
  description = "Map of deletion_policy values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "healthcare_hl7_v2_stores_effective_labels" {
  description = "Map of effective_labels values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no effective_labels are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "healthcare_hl7_v2_stores_labels" {
  description = "Map of labels values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no labels are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "healthcare_hl7_v2_stores_name" {
  description = "Map of name values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no name are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthcare_hl7_v2_stores_notification_config" {
  description = "Map of notification_config values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no notification_config are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => one(v.notification_config) if v.notification_config != null && length(v.notification_config) > 0 }
}
output "healthcare_hl7_v2_stores_notification_configs" {
  description = "Map of notification_configs values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no notification_configs are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.notification_configs if v.notification_configs != null && length(v.notification_configs) > 0 }
}
output "healthcare_hl7_v2_stores_parser_config" {
  description = "Map of parser_config values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no parser_config are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => one(v.parser_config) if v.parser_config != null && length(v.parser_config) > 0 }
}
output "healthcare_hl7_v2_stores_reject_duplicate_message" {
  description = "Map of reject_duplicate_message values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no reject_duplicate_message are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.reject_duplicate_message if v.reject_duplicate_message != null }
}
output "healthcare_hl7_v2_stores_self_link" {
  description = "Map of self_link values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no self_link are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "healthcare_hl7_v2_stores_terraform_labels" {
  description = "Map of terraform_labels values across all healthcare_hl7_v2_stores, keyed the same as var.healthcare_hl7_v2_stores except keys with no terraform_labels are omitted"
  value       = { for k, v in google_healthcare_hl7_v2_store.healthcare_hl7_v2_stores : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

