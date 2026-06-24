module "acm" {
  source = "git@github.com:thecloudsolutions/terraform-aws-units-internal.git//acm?ref=main"

  for_each = var.acm_map

  certificate            = lookup(each.value, "certificate", null)
  certificate_validation = lookup(each.value, "certificate_validation", null)
}
