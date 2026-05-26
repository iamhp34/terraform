module "my_ec2_instance" {
  source = "./modules/ec2"
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = "my-encrypted-demo-bucket-12345"
}