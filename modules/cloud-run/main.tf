resource "google_cloud_run_v2_service" "service" {
  name         = var.service_name
  location     = var.region
  provider     = google-beta
  launch_stage = "BETA"
  
  template {
    dynamic "volumes" {
      for_each = var.enable_volume_mount ? [1] : []
      content {
        name = "data-volume"
        gcs {
          bucket    = var.bucket_name
          read_only = false
        }
      }
    }
    
    max_instance_request_concurrency = var.max_instance_request_concurrency
    timeout                          = var.timeout

    containers {
      image = var.image_url

      dynamic "env" {
        for_each = var.environment_variables
        content {
          name  = env.key
          value = env.value
        }
      }
      
      ports {
        container_port = var.container_port
        name           = "http1"
      }

      resources {
        cpu_idle          = true
        limits = {
          "cpu"    = var.cpu_limit
          "memory" = var.memory_limit
        }
        startup_cpu_boost = true
      }

      startup_probe {
        failure_threshold     = 1
        initial_delay_seconds = 0
        period_seconds        = 240
        timeout_seconds       = 240

        tcp_socket {
          port = var.container_port
        }
      }
      
      dynamic "volume_mounts" {
        for_each = var.enable_volume_mount ? [1] : []
        content {
          mount_path = var.volume_mount_path
          name       = "data-volume"
        }
      }
    }

    scaling {
      max_instance_count = var.max_instance_count
    }
  }
}

resource "google_cloud_run_service_iam_member" "invoker" {

  service  = google_cloud_run_v2_service.service.name
  location = google_cloud_run_v2_service.service.location

  role   = "roles/run.invoker"
  member = "allUsers"
}
