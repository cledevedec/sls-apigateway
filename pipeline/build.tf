resource "aws_codebuild_project" "codebuild_poc" {
  name           = "tf-poc-sls-apigateway"
  description    = "test_codebuild_project_tf"
  build_timeout  = "10"
  queued_timeout = "30"

  service_role = "arn:aws:iam::316682888568:role/service-role/codebuild-tf-poc-sls-apigateway-service-role"

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:2.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
  }

  source {
    type = "CODEPIPELINE"
  }
}
