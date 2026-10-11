output "namespace_policy_attachments_id" {
  description = "Map of id values across all namespace_policy_attachments, keyed the same as var.namespace_policy_attachments except keys with no id are omitted"
  value       = { for k, v in consul_namespace_policy_attachment.namespace_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespace_policy_attachments_namespace" {
  description = "Map of namespace values across all namespace_policy_attachments, keyed the same as var.namespace_policy_attachments except keys with no namespace are omitted"
  value       = { for k, v in consul_namespace_policy_attachment.namespace_policy_attachments : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "namespace_policy_attachments_policy" {
  description = "Map of policy values across all namespace_policy_attachments, keyed the same as var.namespace_policy_attachments except keys with no policy are omitted"
  value       = { for k, v in consul_namespace_policy_attachment.namespace_policy_attachments : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

