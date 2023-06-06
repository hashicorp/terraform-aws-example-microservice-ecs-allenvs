data "terraform_remote_state" "aws-example-network" {
  backend = "remote"
  config = {
    organization = "<YOUR_TFC_ORGANIZATION_NAME>"
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice-infra" {
  backend = "remote"
  config = {
    organization = "<YOUR_TFC_ORGANIZATION_NAME>"
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}

