data "terraform_remote_state" "networking-dev-us-east-1" {
  backend = "remote"
  config = {
    organization = "hashicorp"
    workspaces = {
      name = "networking-dev-us-east-1"
    }
  }
}

data "terraform_remote_state" "microservice-infra-dev-us-east-1" {
  backend = "remote"
  config = {
    organization = "hashicorp"
    workspaces = {
      name = "microservice-infra-dev-us-east-1"
    }
  }
}

data "terraform_remote_state" "networking-prod-us-east-1" {
  backend = "remote"
  config = {
    organization = "hashicorp"
    workspaces = {
      name = "networking-prod-us-east-1"
    }
  }
}

data "terraform_remote_state" "microservice-infra-prod-us-east-1" {
  backend = "remote"
  config = {
    organization = "hashicorp"
    workspaces = {
      name = "microservice-infra-prod-us-east-1"
    }
  }
}