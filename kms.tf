data "aws_partition" "this" {
  for_each = local.enabled
}

data "aws_caller_identity" "this" {
  for_each = local.enabled
}

data "aws_iam_policy_document" "this" {
  for_each = local.enabled

  statement {
    sid       = "enable-IAM-user-permissions"
    effect    = "Allow"
    actions   = ["kms:*"]
    resources = ["*"]

    principals {
      type        = "AWS"
      identifiers = [data.aws_caller_identity.this[each.key].account_id]
    }
  }
}

resource "aws_kms_key" "this" {
  for_each = local.enabled

  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
  key_usage               = var.key_usage
  policy                  = coalesce(var.policy, data.aws_iam_policy_document.this[each.key].json)

  tags = var.tags
}