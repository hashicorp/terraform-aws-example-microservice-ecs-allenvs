# Copyright (c) HashiCorp, Inc.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}


module "dev" {
  source  = "hashicorp/waypoint-ecs/aws"
  version = "0.0.1"

  # App-specific config
  waypoint_project = var.waypoint_project
  application_port = 3000 # TODO(izaak): allow to be configured via input variables. It's pretty draconian to not allow app devs to choose this.

  waypoint_workspace = "dev"

  # Module config
  alb_internal = true
  create_ecr   = false # Prod creates the ecr registry

  # Existing infrastructure
  aws_region       = "us-west-1"
  vpc_id           = data.terraform_remote_state.aws-example-network.outputs.vpc_id
  public_subnets   = data.terraform_remote_state.aws-example-network.outputs.private_subnets
  private_subnets  = data.terraform_remote_state.aws-example-network.outputs.public_subnets
  ecs_cluster_name = data.terraform_remote_state.aws-example-microservice-infra.outputs.ecs_cluster_name
  log_group_name   = data.terraform_remote_state.aws-example-microservice-infra.outputs.log_group_name

  tags = {
    env       = "dev"
    corp      = "hashicorp"
    workload  = "microservice"
    project   = var.waypoint_project
  }
}