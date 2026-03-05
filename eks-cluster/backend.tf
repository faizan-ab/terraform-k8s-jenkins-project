terraform {
  backend "s3" {
    bucket = "jenkins-terraform-kubernetes-nginx1"
    region = "ap-south-1"
    key    = "eks/terraform.tfstate"
  }
}
