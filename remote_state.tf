data "terraform_remote_state" "aws-example-network" {
  backend = "remote"
  config = {
    workspaces = {
      organization = "teresa-corp"
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice" {
  backend = "remote"
  config = {
    workspaces = {
      organization = "teresa-corp"
      name = "aws-example-microservice-infra"
    }
  }
}

