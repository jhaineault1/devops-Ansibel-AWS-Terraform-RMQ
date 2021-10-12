variable "name" {
  description = "name the instance on deploy"
}

variable "group" {
  description = "The group name that ansible's dynamic inventory will group"
}

variable "profile" {
  description = "Which profile to use for IAM"
}
