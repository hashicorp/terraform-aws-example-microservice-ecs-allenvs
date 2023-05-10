data "terraform_remote_state" "aws-example-network" {
  backend = "remote"
  config = {
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice" {
  backend = "remote"
  config = {
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}

