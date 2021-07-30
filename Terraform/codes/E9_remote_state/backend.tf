terraform {
  backend "s3" {
    bucket = "tf-wiculty-sample"
    key = "wiculty-sample/prod-tf-state"
    region = "ap-south-1"
    }
}