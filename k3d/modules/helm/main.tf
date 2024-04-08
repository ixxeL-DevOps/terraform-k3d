resource "helm_release" "example" {
  name  = var.helm_globals.name
  chart = var.helm_globals.chart
  namespace = var.helm_globals.namespace
  create_namespace = var.helm_globals.create_namespace
  atomic = var.helm_globals.atomic
  skip_crds = var.helm_globals.skip_crds
  wait = var.helm_globals.wait
  timeout = var.helm_globals.timeout
  lint = var.helm_globals.lint
  values = var.helm_globals.values_file == null ? [] : [templatefile(var.helm_globals.values_file, {})]

  dynamic "set" {
    for_each = var.set_value
    iterator = item #optional
    content {
      name       = item.value.name
      value  = item.value.value
      type  = item.value.type
    }
  }
}
