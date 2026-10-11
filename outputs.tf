output "quicksight_account_settings_aws_account_id" {
  description = "Map of aws_account_id values across all quicksight_account_settings, keyed the same as var.quicksight_account_settings"
  value       = { for k, v in aws_quicksight_account_settings.quicksight_account_settings : k => v.aws_account_id if v.aws_account_id != null && length(v.aws_account_id) > 0 }
}
output "quicksight_account_settings_default_namespace" {
  description = "Map of default_namespace values across all quicksight_account_settings, keyed the same as var.quicksight_account_settings"
  value       = { for k, v in aws_quicksight_account_settings.quicksight_account_settings : k => v.default_namespace if v.default_namespace != null && length(v.default_namespace) > 0 }
}
output "quicksight_account_settings_region" {
  description = "Map of region values across all quicksight_account_settings, keyed the same as var.quicksight_account_settings"
  value       = { for k, v in aws_quicksight_account_settings.quicksight_account_settings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "quicksight_account_settings_termination_protection_enabled" {
  description = "Map of termination_protection_enabled values across all quicksight_account_settings, keyed the same as var.quicksight_account_settings"
  value       = { for k, v in aws_quicksight_account_settings.quicksight_account_settings : k => v.termination_protection_enabled if v.termination_protection_enabled != null }
}

