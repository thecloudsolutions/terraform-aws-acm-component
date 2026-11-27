module "acm" {
  source = "./module"

  for_each = var.acm_map

  certificate            = lookup(each.value, "certificate", null)
  existing_certificate   = lookup(each.value, "existing_certificate", null)
  certificate_validation = lookup(each.value, "certificate_validation", null)
}
