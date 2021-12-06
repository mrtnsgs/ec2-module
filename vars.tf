variable "credentials_file" {
  default = "~/.aws/credentials"
}

variable "ami" {
  #default = "ami-089fe97bc00bff7cc" //us-east-2 ubuntu image
  #default = "ami-0c7ea5497c02abcaf" // us-west-2 ubuntu 18.04 image
  default = "ami-07d02ee1eeb0c996c" // us-east-1 debian 10
}

variable "instance_count" {
  default = "1"
}

variable "instance_tags" {
  type    = list
  default = ["dex-bzero"]
}

variable "instance_type" {
  default = "t3.small"
}

variable "aws_region" {
  #default = "us-west-2"
  default = "us-east-1"
}

variable "aws_instance_profile" {
  default = "profileNameInCredentialsFile"
}

variable "instance_name" {
  default = "Instance test 1"
}
variable "ssh_user" {
  type    = string
  default = "admin"
}
