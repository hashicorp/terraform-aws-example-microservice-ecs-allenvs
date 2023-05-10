data "terraform_remote_state" "aws-example-network-dev-us-east-1" {
  backend = "remote"
  config = {
    organization = "{{your_tfc_organization}}"
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice-infra-dev-us-east-1" {
  backend = "remote"
  config = {
    organization = "{{your_tfc_organization}}"
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}

data "terraform_remote_state" "aws-example-network-prod-us-east-1" {
  backend = "remote"
  config = {
    organization = "{{your_tfc_organization}}"
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice-infra-prod-us-east-1" {
  backend = "remote"
  config = {
    organization = "{{your_tfc_organization}}"
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}
