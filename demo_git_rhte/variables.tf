variable "ami_number" {
  default = "ami-0f095f89ae15be883"
}
variable "key_name" {
  default = "trellis_aap2"
}
variable "instance_name" {
  default = "demo_git_rhte"
}
variable "instance_type" {
  default = "t2.medium"
}
variable "subnet_id" {
  default = "subnet-0323549ff78f73ee0"
}
variable "vpc_security_group_ids" {
  default = ["sg-00f7334776aefe8b1"]
}
