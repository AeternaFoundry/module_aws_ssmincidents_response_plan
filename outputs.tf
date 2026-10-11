output "ssmincidents_response_plans_id" {
  description = "Map of id values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssmincidents_response_plans_action" {
  description = "Map of action values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => one(v.action) if v.action != null && length(v.action) > 0 }
}
output "ssmincidents_response_plans_arn" {
  description = "Map of arn values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssmincidents_response_plans_chat_channel" {
  description = "Map of chat_channel values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.chat_channel if v.chat_channel != null && length(v.chat_channel) > 0 }
}
output "ssmincidents_response_plans_display_name" {
  description = "Map of display_name values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ssmincidents_response_plans_engagements" {
  description = "Map of engagements values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.engagements if v.engagements != null && length(v.engagements) > 0 }
}
output "ssmincidents_response_plans_incident_template" {
  description = "Map of incident_template values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => one(v.incident_template) if v.incident_template != null && length(v.incident_template) > 0 }
}
output "ssmincidents_response_plans_integration" {
  description = "Map of integration values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => one(v.integration) if v.integration != null && length(v.integration) > 0 }
}
output "ssmincidents_response_plans_name" {
  description = "Map of name values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssmincidents_response_plans_region" {
  description = "Map of region values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssmincidents_response_plans_tags" {
  description = "Map of tags values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssmincidents_response_plans_tags_all" {
  description = "Map of tags_all values across all ssmincidents_response_plans, keyed the same as var.ssmincidents_response_plans"
  value       = { for k, v in aws_ssmincidents_response_plan.ssmincidents_response_plans : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

