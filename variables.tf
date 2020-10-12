variable "aws_access_key" {default = "AKIAQCO22FFC32CIE5DB"}
variable "aws_secret_key" {default = "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"}
variable "aws_region" {default = "us-east-1"}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-97785bed" # ubuntu 14.04 LTS
		us-east-2 = "ami-f63b1193" # ubuntu 14.04 LTS
		us-west-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
		us-west-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
    }
}
variable "vpc_cidr" {default = "10.1.0.0/16"}
variable "vpc_name" {default = "terraformVPC"}
variable "IGW_name" {default = "terraformVPC-IGW"}
variable "key_name" {default = "devopskey"}
variable "public_subnet1_cidr" {default = "10.1.1.0/24"}
variable "public_subnet2_cidr" {default = "10.1.2.0/24"}
variable "public_subnet3_cidr" {default = "10.1.3.0/24"}
variable "private_subnet_cidr" {default = "10.1.10.0/24"}
variable "public_subnet1_name" {default = "terraformVPC-subnet-1"}
variable "public_subnet2_name" {default = "terraformVPC-subnet-2"}
variable "public_subnet3_name" {default = "terraformVPC-subnet-3"}
variable "private_subnet_name" {default = "terraformVPC-subnetpri"}
variable Main_Routing_Table {default = "terraformVPC-Routing-Table"}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "environment" { default = "dev" }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
  }
}

