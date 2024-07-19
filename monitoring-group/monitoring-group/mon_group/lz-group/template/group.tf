module "monitoring_group" {
  for_each = {
      for k, v in var.monitoring_group: k => v
      }
     source                = "/home/umamaheswari_rangu/org-sink/mon_group/moniroting-group"
     display_name          = each.value.display_name
     filter                = each.value.filter
}