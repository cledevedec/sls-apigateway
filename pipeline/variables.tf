variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "aws_profile" {
  type    = string
  default = "default"
}
variable "project" {
  type    = string
  default = ""
}
variable "owner" {
  type    = string
  default = ""
}
variable "prefix" {
  type    = string
  default = ""
}
variable "status" {
  type    = string
  default = ""
}
variable "environment" {
  type    = string
  default = ""
}
variable "deployment_bucket_id" {
  type    = string
  default = ""
}
variable "deployment_bucket_arn" {
  type    = string
  default = ""
}
