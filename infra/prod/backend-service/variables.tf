variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "region_cloudrun" {
  description = "The region where the Cloud Run service will be deployed."
  type        = string
  
}
variable "backend_service" {
  description = "The name of the backend service."
  type        = string
  
}
variable "CLOUD_STORAGE_AUTH_PROVIDER_X509_CERT_URL" {
  description = "Cloud Storage Auth Provider X509 Cert URL"
  type        = string
}
variable "CLOUD_STORAGE_AUTH_URI" {
  description = "Cloud Storage Auth URI"
  type        = string
}
variable "CLOUD_STORAGE_CLIENT_EMAIL" {
  description = "Cloud Storage Client Email"
  type        = string
}
variable "CLOUD_STORAGE_CLIENT_ID" {
  description = "Cloud Storage Client ID"
  type        = string
}
variable "CLOUD_STORAGE_CLIENT_X509_CERT_URL" {
  description = "Cloud Storage Client X509 Cert URL"
  type        = string
}
variable "CLOUD_STORAGE_PRIVATE_KEY" {
  description = "Cloud Storage Private Key"
  type        = string
}
variable "CLOUD_STORAGE_PRIVATE_KEY_ID" {
  description = "Cloud Storage Private Key ID"
  type        = string
}
variable "CLOUD_STORAGE_PROJECT_ID" {
  description = "Cloud Storage Project ID"
  type        = string
}
variable "CLOUD_STORAGE_TOKEN_URI" {
  description = "Cloud Storage Token URI"
  type        = string
}
variable "CLOUD_STORAGE_TYPE" {
  description = "Cloud Storage Type"
  type        = string
}
variable "FIREBASE_UNIVERSE_DOMAIN" {
  description = "Firebase Universe Domain"
  type        = string
}
variable "Database_url" {
  description = "Database URL"
  type        = string
}
variable "FIREBASE_AUTH_PROVIDER_X509_CERT_URL" {
  description = "Firebase Auth Provider X509 Cert URL"
  type        = string
}
variable "FIREBASE_AUTH_URI" {
  description = "Firebase Auth URI"
  type        = string
}
variable "FIREBASE_CLIENT_EMAIL" {
  description = "Firebase Client Email"
  type        = string
}
variable "FIREBASE_CLIENT_ID" {
  description = "Firebase Client ID"
  type        = string
}
variable "FIREBASE_CLIENT_X509_CERT_URL" {
  description = "Firebase Client X509 Cert URL"
  type        = string
}
variable "FIREBASE_PRIVATE_KEY" {
  description = "Firebase Private Key"
  type        = string
}
variable "FIREBASE_PROJECT_ID" {
  description = "Firebase Project ID"
  type        = string
}
variable "FIREBASE_TOKEN_URI" {
  description = "Firebase Token URI"
  type        = string
}
variable "FIREBASE_TYPE" {
  description = "Firebase Type"
  type        = string
}
variable "GEMINI_API_KEY" {
  description = "Gemini API Key"
  type        = string
}
variable "SOLR_BASE_URL" {
  description = "Solr Base URL"
  type        = string
}
variable "BUCKET" {
  description = "Bucket Name"
  type        = string
}
variable "FOLDER" {
  description = "Folder Name"
  type        = string
}
variable "PERSIMMON_DATA_BUCKET" {
  description = "Persimmon Data Bucket"
  type        = string
}
variable "TOPIC_NAME" {
  description = "Topic Name"
  type        = string
}
variable "region" {
  description = "The region where the resources will be created."
  type        = string
}
variable "region_container_repo" {
  description = "The region where the Artifact Registry repository is located."
  type        = string
  
}
variable "image_name" {
  description = "The name of the Docker image for the backend service."
  type        = string
  
}
variable "bucket_name" {
  description = "The name of the Cloud Storage bucket to be used."
  type        = string
  
}
variable "repository_id" {
  description = "The ID of the Artifact Registry repository."
  type        = string
  
}
variable "app_image_name" {
  description = "The name of the Docker image for the frontend application."
  type        = string
  
}
variable "PERSIMMON_IMAGES_BUCKET" {
  description = "The name of the bucket for persimmon images"
  type        = string
  
}
variable "CURRENT_USER" {
  description = "The current user deploying the infrastructure"
  type        = string
  
}
variable "GEMINI_KEY_MAX_CALLS_PER_MINUTE" {
  description = "The maximum number of calls per minute allowed for the Gemini API key"
  type        = string
  
}
variable "JOB_SECRET_KEY" {
  description = "The secret key used for job processing"
  type        = string
  
}
variable "OTPLESS_CLIENT_SECRET" {
  description = "The client secret for OTPLESS integration"
  type        = string
  
}
variable "OTPLESS_CLIENT_ID" {
  description = "The client ID for OTPLESS integration"
  type        = string
  
}
variable "CHAT_GENAI" {

  description = "The API key for Chat GenAI service"
  type        = string
}
variable "GENAI" {
  description = "The API key for GenAI service"
  type        = string
}
variable "TEMPLATE_EMAIL_ID" {
  description = "The ID of the email template to be used"
  type        = string
  
}
variable "KEY_1" {
  description = "A generic key 1"
  type        = string
  
}
variable "KEY_2" {
  description = "A generic key 2"
  type        = string
  
}
variable "KEY_3" {
  description = "A generic key 3"
  type        = string
}
variable "KEY_4" {
  description = "A generic key 4"
  type        = string
  
}
variable "KEY_5" {
  description = "A generic key 5"
  type        = string
  
}
variable "SMTP_USER" {
  description = "The SMTP user for sending emails"
  type        = string
  
}
variable "SMTP_PASSWORD" {
  description = "The SMTP password for sending emails"
  type        = string
  
}
variable "FROM_ADDRESS" {
  description = "The email address from which emails will be sent"
  type        = string
}
variable "SECRET_KEY" {
  description = "The secret key for the application"
  type        = string
  
}
variable "LINKEDIN_CLIENT_ID" {
  description = "The LinkedIn client ID for OAuth integration"
  type        = string
  
}
variable "LINKEDIN_CLIENT_SECRET" {
  description = "The LinkedIn client secret for OAuth integration"
  type        = string
  
}
variable "LINKEDIN_REDIRECT_URL" {
  description = "The LinkedIn redirect URL for OAuth integration"
  type        = string
  
}
variable "FE_URL" {
  description = "The URL of the frontend application"
  type        = string
  
}
variable "GOOGLE_MEET_REDIRECT_URL" {
  description = "The Google Meet redirect URL for integration"
  type        = string
  
}
variable "GOOGLE_MEET_CLIENT_ID" {
  description = "The Google Meet client ID for OAuth integration"
  type        = string
  
}
variable "GOOGLE_MEET_CLIENT_SECRET" {
  description = "The Google Meet client secret for OAuth integration"
  type        = string
  
}
variable "AI_INTERVIEW_LINK" {
  description = "The link to the AI interview service"
  type        = string
  
}
variable "INTEGRATIONS_SECRET_KEY" {
  description = "The secret key for integrations"
  type        = string

}
variable "DB_MAX_CONNECTIONS" {
  description = "The maximum number of database connections"
  type        = string
  
}
variable "DB_RESERVED_CONNECTIONS" {
  description = "The number of reserved database connections"
  type        = string
  
}
variable "DB_MAX_OVERFLOW" {
  description = "The maximum overflow of database connections"
  type        = string
  
}
variable "WEB_CONCURRENCY" {
  description = "The concurrency limit for web requests"
  type        = string
  
}
variable "REDIS_URL" {
  description = "The URL of the Redis instance"
  type        = string
  
}
variable "BACKEND_CORS_ORIGINS" {
  description = "The allowed CORS origins for the backend service"
  type        = string
  
}

variable "max_instance_count" {
  description = "Max instance count for service"
}

variable "timeout" {
  description = "Max instance count for service"
}