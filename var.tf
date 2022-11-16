variable "ami" {
  description = "ubuntu imageId"
  default     = "ami-024c319d5d14b463e"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instances" {
  description = "Total number of Resources"
  default     = "1"
}
// terraform apply -var instances="2" -auto-approve

/* multi
  line comment
*/
