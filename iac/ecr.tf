resource "aws_ecr_repository" "nestjs_docker_rocketeseat" {
  name                 = "nestjs_docker_rocketeseat"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    IAC = "True"
  }
}