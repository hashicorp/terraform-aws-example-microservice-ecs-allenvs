data "terraform_remote_state" "aws-example-network" {
  backend = "remote"
  config = {
    organization = "{{ .TfcOrgName }}"
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice" {
  backend = "remote"
  config = {
    organization = "{{ .TfcOrgName }}"
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}

