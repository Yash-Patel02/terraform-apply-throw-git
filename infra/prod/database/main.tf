module "database" {
  source = "../../../modules/database"
   
  db_name     = var.db_name
  db_version  = var.db_version
  region      = var.region
  
}

output "database_name" {
  value       = module.database.database_name
}

output "private_ip_address" {
  value = module.database.private_ip_address
}
