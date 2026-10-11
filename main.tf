resource "consul_namespace_policy_attachment" "namespace_policy_attachments" {
  for_each = var.namespace_policy_attachments

  namespace = each.value.namespace
  policy    = each.value.policy
}

