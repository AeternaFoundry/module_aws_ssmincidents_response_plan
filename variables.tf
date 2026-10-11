variable "ssmincidents_response_plans" {
  description = <<EOT
Map of ssmincidents_response_plans, attributes below
Required:
    - name
    - incident_template (block):
        - dedupe_string (optional)
        - impact (required)
        - incident_tags (optional)
        - notification_target (optional, block):
            - sns_topic_arn (required)
        - summary (optional)
        - title (required)
Optional:
    - chat_channel
    - display_name
    - engagements
    - region
    - tags
    - tags_all
    - action (block):
        - ssm_automation (optional, block):
            - document_name (required)
            - document_version (optional)
            - dynamic_parameters (optional)
            - parameter (optional, block):
                - name (required)
                - values (required)
            - role_arn (required)
            - target_account (optional)
    - integration (block):
        - pagerduty (optional, block):
            - name (required)
            - secret_id (required)
            - service_id (required)
EOT

  type = map(object({
    name         = string
    chat_channel = optional(set(string))
    display_name = optional(string)
    engagements  = optional(set(string))
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
    incident_template = object({
      dedupe_string = optional(string)
      impact        = number
      incident_tags = optional(map(string))
      notification_target = optional(list(object({
        sns_topic_arn = string
      })))
      summary = optional(string)
      title   = string
    })
    action = optional(object({
      ssm_automation = optional(list(object({
        document_name      = string
        document_version   = optional(string)
        dynamic_parameters = optional(map(string))
        parameter = optional(list(object({
          name   = string
          values = set(string)
        })))
        role_arn       = string
        target_account = optional(string)
      })))
    }))
    integration = optional(object({
      pagerduty = optional(list(object({
        name       = string
        secret_id  = string
        service_id = string
      })))
    }))
  }))
}

