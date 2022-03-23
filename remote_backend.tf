terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "GustavoOliveira"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
