identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = ["ap-southeast-2"]
    role_arn       = "arn:aws:iam::320983814425:role/wbc-t1deploy"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "test-s3-tag" }
  }
}

deployment "production" {
  inputs = {
    regions        = ["ap-southeast-2"]
    role_arn       = "arn:aws:iam::320983814425:role/wbc-t1deploy"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "prod-s3-tag" }
  }
}