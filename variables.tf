variable "namespace_policy_attachments" {
  description = <<EOT
Map of namespace_policy_attachments, attributes below
Required:
    - namespace
    - policy
EOT

  type = map(object({
    namespace = string
    policy    = string
  }))
}

