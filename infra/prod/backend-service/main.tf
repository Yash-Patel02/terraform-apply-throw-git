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

module "backend_service" {
  source = "../../../modules/cloud-run"

  project_id   = var.project_id
  region       = var.region_cloudrun
  service_name = var.backend_service
  image_url    = "" #data.terraform_remote_state.artifact.outputs.backend_image_url
  # Backend-specific configuration
  container_port                   = 8000
  cpu_limit                        = "4000m"
  memory_limit                     = "4Gi"
  max_instance_request_concurrency = 1
  enable_volume_mount              = true
  bucket_name                      = "" #data.terraform_remote_state.storage.outputs.storage_bucket_name
  volume_mount_path                = "/persimmon-data"
  max_instance_count               = var.max_instance_count
  timeout                          = var.timeout
  


  environment_variables = {
    CLOUD_STORAGE_AUTH_PROVIDER_X509_CERT_URL = var.CLOUD_STORAGE_AUTH_PROVIDER_X509_CERT_URL
    CLOUD_STORAGE_AUTH_URI                    = var.CLOUD_STORAGE_AUTH_URI
    CLOUD_STORAGE_CLIENT_EMAIL                = var.CLOUD_STORAGE_CLIENT_EMAIL
    CLOUD_STORAGE_CLIENT_ID                   = var.CLOUD_STORAGE_CLIENT_ID
    CLOUD_STORAGE_CLIENT_X509_CERT_URL        = var.CLOUD_STORAGE_CLIENT_X509_CERT_URL
    CLOUD_STORAGE_PRIVATE_KEY                 = var.CLOUD_STORAGE_PRIVATE_KEY
    CLOUD_STORAGE_PRIVATE_KEY_ID              = var.CLOUD_STORAGE_PRIVATE_KEY_ID
    CLOUD_STORAGE_PROJECT_ID                  = var.CLOUD_STORAGE_PROJECT_ID
    CLOUD_STORAGE_TOKEN_URI                   = var.CLOUD_STORAGE_TOKEN_URI
    CLOUD_STORAGE_TYPE                        = var.CLOUD_STORAGE_TYPE
    CLOUD_STORAGE_UNIVERSE_DOMAIN             = var.FIREBASE_UNIVERSE_DOMAIN

    DATABASE_URL                         = var.Database_url
    FIREBASE_AUTH_PROVIDER_X509_CERT_URL = var.FIREBASE_AUTH_PROVIDER_X509_CERT_URL
    FIREBASE_AUTH_URI                    = var.FIREBASE_AUTH_URI
    FIREBASE_CLIENT_EMAIL                = var.FIREBASE_CLIENT_EMAIL
    FIREBASE_CLIENT_ID                   = var.FIREBASE_CLIENT_ID
    FIREBASE_CLIENT_X509_CERT_URL        = var.FIREBASE_CLIENT_X509_CERT_URL
    FIREBASE_PRIVATE_KEY                 = var.FIREBASE_PRIVATE_KEY
    FIREBASE_PROJECT_ID                  = var.FIREBASE_PROJECT_ID
    FIREBASE_TOKEN_URI                   = var.FIREBASE_TOKEN_URI
    FIREBASE_TYPE                        = var.FIREBASE_TYPE
    FIREBASE_UNIVERSE_DOMAIN             = var.FIREBASE_UNIVERSE_DOMAIN

    GEMINI_API_KEY                  = var.GEMINI_API_KEY
    GEMINI_KEY_MAX_CALLS_PER_MINUTE = var.GEMINI_KEY_MAX_CALLS_PER_MINUTE

    SOLR_BASE_URL           = var.SOLR_BASE_URL
    BUCKET                  = var.BUCKET
    FOLDER                  = var.FOLDER
    PERSIMMON_DATA_BUCKET   = var.PERSIMMON_DATA_BUCKET
    PERSIMMON_IMAGES_BUCKET = "" #data.terraform_remote_state.storage.outputs.images_storage_bucket_name
    TOPIC_NAME              = var.TOPIC_NAME
    ENVIRONMENT             = "dev"

    CURRENT_USER   = var.CURRENT_USER
    JOB_SECRET_KEY = var.JOB_SECRET_KEY

    OTPLESS_CLIENT_SECRET = var.OTPLESS_CLIENT_SECRET
    OTPLESS_CLIENT_ID     = var.OTPLESS_CLIENT_ID

    CHAT_GENAI        = var.CHAT_GENAI
    GENAI             = var.GENAI
    TEMPLATE_EMAIL_ID = var.TEMPLATE_EMAIL_ID

    KEY_1 = var.KEY_1
    KEY_2 = var.KEY_2
    KEY_3 = var.KEY_3
    KEY_4 = var.KEY_4
    KEY_5 = var.KEY_5

    SMTP_USER     = var.SMTP_USER
    SMTP_PASSWORD = var.SMTP_PASSWORD
    FROM_ADDRESS  = var.FROM_ADDRESS

    SECRET_KEY = var.SECRET_KEY

    LINKEDIN_CLIENT_ID     = var.LINKEDIN_CLIENT_ID
    LINKEDIN_CLIENT_SECRET = var.LINKEDIN_CLIENT_SECRET
    LINKEDIN_REDIRECT_URL  = var.LINKEDIN_REDIRECT_URL

    FE_URL = var.FE_URL

    GOOGLE_MEET_REDIRECT_URL  = var.GOOGLE_MEET_REDIRECT_URL
    GOOGLE_MEET_CLIENT_ID     = var.GOOGLE_MEET_CLIENT_ID
    GOOGLE_MEET_CLIENT_SECRET = var.GOOGLE_MEET_CLIENT_SECRET

    AI_INTERVIEW_LINK       = var.AI_INTERVIEW_LINK
    INTEGRATIONS_SECRET_KEY = var.INTEGRATIONS_SECRET_KEY

    DB_MAX_CONNECTIONS      = var.DB_MAX_CONNECTIONS
    DB_RESERVED_CONNECTIONS = var.DB_RESERVED_CONNECTIONS
    DB_MAX_OVERFLOW         = var.DB_MAX_OVERFLOW
    WEB_CONCURRENCY         = var.WEB_CONCURRENCY

    REDIS_URL            = var.REDIS_URL
    BACKEND_CORS_ORIGINS = var.BACKEND_CORS_ORIGINS
  }
}
