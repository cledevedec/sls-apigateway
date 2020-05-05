terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "cli-tf-remote-states-sandbox-eu-west-1"
    dynamodb_table = "cli-tf-locks-sandbox-eu-west-1"
    key            = "tf-eu-west-1-sandbox-devops-poc-sls-cicd.tfstate"
    region         = "eu-west-1"
  }
}
