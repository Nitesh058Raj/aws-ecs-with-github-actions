variable "repo_name" {
  default = "${env.REPO_NAME}"
}

variable "tag" {
  default = "${env.TAG}"
}

variable "aws_access_key" {
  default = "${env.AWS_ACCESS_KEY}"
}

variable "aws_secret_key" {
  default = "${env.AWS_SECRET_KEY}"
}
