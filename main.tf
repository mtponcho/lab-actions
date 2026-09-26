terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
    }
  }
}

resource "local_file" "test" {
  filename = "${path.module}/test.txt"
  content  = "Hello from Terraform"
}
