resource "google_sql_database_instance" "cloud_sql_db" {
  name                = var.db_name
  database_version    =  var.db_version#"POSTGRES_17"
   region              =  var.region#"us-west1"
  deletion_protection = true
  settings {
    tier    = "db-custom-2-8192"
    edition = "ENTERPRISE"
  }
}


output "database_name" {
  description = "The name of the Cloud SQL database instance"
  value       = google_sql_database_instance.cloud_sql_db.name
}

output "private_ip_address" {
  value = google_sql_database_instance.cloud_sql_db.private_ip_address
}