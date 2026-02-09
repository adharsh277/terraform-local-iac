terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Redis Image
resource "docker_image" "redis" {
  name = "redis:7-alpine"
}

# Nginx Image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Redis Container
resource "docker_container" "redis_container" {
  name  = "redis-local"
  image = docker_image.redis.image_id

  ports {
    internal = 6379
    external = 6379
  }
}

# Nginx Container
resource "docker_container" "nginx_container" {
  name  = "nginx-local"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}
