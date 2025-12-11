output "db_instance_ip" {
  description = "Public IP of the Cloud SQL instance"
  value       = google_sql_database_instance.db_instance.public_ip_address
}

output "db_name" {
  description = "Database name"
  value       = google_sql_database.database.name
}

output "db_user" {
  description = "Database user"
  value       = google_sql_user.user.name
}
