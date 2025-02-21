store "varset" "tokens" {
  id = "varset-uK6b5weP8acZwnpD"
  category = "terraform"
}

deployment "development" {
  inputs = {
    region        = "ap-southeast-2"
    access_key = store.varset.tokens.AWS_ACCESS_KEY_ID    
    secret_key = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags   = { stacks-preview-example = "test-s3-tag" }
  }
}

deployment "production" {
  inputs = {
    region        = "ap-southeast-2"
    access_key = store.varset.tokens.AWS_ACCESS_KEY_ID    
    secret_key = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags   = { stacks-preview-example = "test-s3-tag" }
  }
}