locals {
  common_tags = {
    project = var.project
    environment = var.environment
    terraform = "true"
  }

  vpc_final_tags = merge(
    vpc_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
    )
}

