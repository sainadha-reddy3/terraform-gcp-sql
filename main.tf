resource "google_sql_database_instance" "db_instance" {
  name             = var.db_instance_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = "db-f1-micro"  # smallest & cheapest

    backup_configuration {
      enabled = true
    }

    ip_configuration {
  ipv4_enabled = true

  authorized_networks {
    name  = "my-laptop"
    value = "116.73.243.69/32"
  }
}

  }

  deletion_protection = false
}

resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.db_instance.name
}

resource "google_sql_user" "user" {
  name     = var.db_user
  instance = google_sql_database_instance.db_instance.name
  password = var.db_password
}
