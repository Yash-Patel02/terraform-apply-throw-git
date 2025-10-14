
module "redis_instance" {
  source = "../../../modules/radis"

  redis_name = var.redis_name
  region = var.region

}

output "redis_host" {
  value = module.redis_instance.redis_host
}