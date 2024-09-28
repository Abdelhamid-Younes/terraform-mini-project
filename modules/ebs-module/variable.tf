variable "ebs_size" {
  type = number
  default = "5"
}

variable "az" {
    description = "Availability zone of the instance ebs"
    type = string
    default = "us-east-b1"
}

variable "ebs_tag" {
    type = string
    default = "hamid-ebs"
}