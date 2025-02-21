component "s3" {
  source = "./s3"

  inputs = {
    region = var.region
  }

  providers = {
    aws    = provider.aws.configurations
  }
}