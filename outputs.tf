output "datamap" {
  value = {
    app_code               = lower(var.app_code)
    app_owner              = lower(var.app_owner)
    date_creation          = lower(var.date_creation)
    app_criticity          = lower(var.app_criticity)
    technical_contact      = lower(var.technical_contact)
    auto_shutdown_schedule = lower(var.auto_shutdown_schedule)
  }
}
