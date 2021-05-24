variable "AWS_REGION" {
  default = "us-east-2"
}

variable "PATH_TO_PRIVATE_KEY" {
 default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
 default = "mykey.pub"
}
variable "AMIS" {
 type = map(string)
 default = {
 us-east-2 = "ami-0b9064170e32bde34"
 us-west-2 = "ami-0a7d051a1c4b54f65"
 eu-west-1 = "ami-04c58523038d79132"
 }
}



