locals {
  common_tags = {
    project = var.project
    environment = var.environment
    terraform = "true"
  }

  vpc_final_tags = merge(
    local.common_tags,
    var.vpc_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
    )
   
   igw_final_tags = merge(
    local.common_tags,
    var.igw_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
   )
}

