terraform {
  backend "s3" {
    bucket         = "project-ci-12-terraform-state"
    key            = "project/vpc/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "project_table"
  }
}