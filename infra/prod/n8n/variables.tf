variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "region_cloudrun" {
  description = "The region where the Cloud Run service will be deployed."
  type        = string
  
}

variable "n8n_service_name" {
  description = "name for n8n service"
}



variable "max_instance_count" {
  description = "max instanc count for request"
}

variable "timeout" {
  description = "timeout time for request"
}


variable "region" {
  description = "region for the database"
}

variable "volume_mount_path" {
  description = " value for volume_mount_path"
}



variable "db_type" {
  description = "Type of the database used by n8n. Example: 'postgresdb'."
}

variable "db_postgresdb_port" {
  description = "The port on which the PostgreSQL database is listening."
}

variable "db_postgresdb_database" {
  description = "The name of the PostgreSQL database to use for n8n."
}

variable "db_postgresdb_user" {
  description = "The username to connect to the PostgreSQL database for n8n."
}

variable "db_password" {
  description = "The password to connect to the PostgreSQL database for n8n."
}

variable "executions_mode" {
  description = "Execution mode for n8n workflows. Example: 'queue'."
}


variable "queue_bull_redis_port" {
  description = "The port on which the Redis server is listening."
}

variable "n8n_encryption_key" {
  description = "The encryption key used by n8n to encrypt sensitive data."
}

variable "n8n_basic_auth_active" {
  description = "Enable or disable basic authentication for n8n UI. Example: 'true' or 'false'."
}

variable "n8n_basic_auth_user" {
  description = "Username for basic authentication of n8n UI."
}

variable "n8n_basic_auth_password" {
  description = "Password for basic authentication of n8n UI."
}

variable "n8n_protocol" {
  description = "Protocol for n8n URL. Example: 'https' or 'http'."
}

variable "n8n_host" {
  description = "Hostname for the n8n instance. Example: 'n8n-project.a.run.app'."
}

variable "n8n_run_command" {
  description = "Command used to run the n8n instance."
}
