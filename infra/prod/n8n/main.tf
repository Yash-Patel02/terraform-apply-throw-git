

# data "terraform_remote_state" "artifact" {
#   backend = "gcs" # or s3/azurerm depending on your backend
#   config = {
#     bucket = "my-terraform-states"
#     prefix = "artifact"
#   }
# }
# Pull outputs from storage project
# data "terraform_remote_state" "storage" {
#   backend = "gcs"
#   config = {
#     bucket = "my-terraform-states"
#     prefix = "storage"
#   }
# }



# data "terraform_remote_state" "redis" {
#   backend = "gcs"
#   config = {
#     bucket = "my-terraform-states"
#     prefix = "redis"
#   }
# }

# data "terraform_remote_state" "database" {
#   backend = "gcs"
#   config = {
#     bucket = "my-terraform-states"
#     prefix = "database"
#   }
# }






module "n8n_main" {
  source = "../../../modules/cloud-run"
   
  project_id   = var.project_id
  region       = var.region_cloudrun
  service_name = var.n8n_service_name
  image_url    = ""#data.terraform_remote_state.artifact.outputs.n8n_image_url
  
  # n8n configuraion
  container_port                    = 8080
  cpu_limit                        = "1000m"
  memory_limit                     = "512Mi"
  max_instance_request_concurrency = 80
  enable_volume_mount              = false
  max_instance_count = var.max_instance_count
  timeout = var.timeout
  bucket_name                      =""#data.terraform_remote_state.storage.outputs.storage_bucket_name
  volume_mount_path                = var.volume_mount_path

  environment_variables = {
    DB_TYPE                  = var.db_type
    DB_POSTGRESDB_HOST       = ""#data.terraform_remote_state.database.outputs.private_ip_address
    DB_POSTGRESDB_PORT       = var.db_postgresdb_port
    DB_POSTGRESDB_DATABASE   = var.db_postgresdb_database
    DB_POSTGRESDB_USER       = var.db_postgresdb_user
    DB_POSTGRESDB_PASSWORD   = var.db_password
    EXECUTIONS_MODE          = var.executions_mode
    QUEUE_BULL_REDIS_HOST    = ""#data.terraform_remote_state.redis.outputs.redis_host
    QUEUE_BULL_REDIS_PORT    = var.queue_bull_redis_port
    N8N_ENCRYPTION_KEY       = var.n8n_encryption_key
    N8N_BASIC_AUTH_ACTIVE    = var.n8n_basic_auth_active
    N8N_BASIC_AUTH_USER      = var.n8n_basic_auth_user
    N8N_BASIC_AUTH_PASSWORD  = var.n8n_basic_auth_password
    N8N_PROTOCOL             = var.n8n_protocol
    N8N_HOST                 = var.n8n_host
  }

}

module "n8n_worker" {
   source = "../../../modules/cloud-run"
   
   project_id   = var.project_id
  region       = var.region_cloudrun
  service_name = var.n8n_service_name
  image_url    = ""#data.terraform_remote_state.artifact.outputs.n8n_image_url
  
  # n8n configuraion
  container_port                   = 8080
  cpu_limit                        = "1000m"
  memory_limit                     = "512Mi"
  max_instance_request_concurrency = 80
  enable_volume_mount              = false
  max_instance_count = var.max_instance_count
  timeout = var.timeout
   bucket_name                      = "" #data.terraform_remote_state.storage.outputs.storage_bucket_name
  volume_mount_path                = var.volume_mount_path

  environment_variables = {
    DB_TYPE                  = var.db_type
    DB_POSTGRESDB_HOST       = ""#data.terraform_remote_state.database.outputs.private_ip_address
    DB_POSTGRESDB_PORT       = var.db_postgresdb_port
    DB_POSTGRESDB_DATABASE   = var.db_postgresdb_database
    DB_POSTGRESDB_USER       = var.db_postgresdb_user
    DB_POSTGRESDB_PASSWORD   = var.db_password
    QUEUE_BULL_REDIS_HOST    = ""#data.terraform_remote_state.redis.outputs.redis_host
    QUEUE_BULL_REDIS_PORT    = var.queue_bull_redis_port
    N8N_ENCRYPTION_KEY       = var.n8n_encryption_key
    EXECUTIONS_MODE          = var.executions_mode
    N8N_RUN_COMMAND           =var.n8n_run_command
  }

}