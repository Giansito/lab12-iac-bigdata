provider "aws" {
  region     = var.aws_region
  access_key = "test"
  secret_key = "test"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3   = "http://localhost:4566"
    glue = "http://localhost:4566"
  }
}

provider "aws" {
  alias      = "glue_local"
  region     = var.aws_region
  access_key = "test"
  secret_key = "test"

  skip_credentials_validation = false
  skip_metadata_api_check     = true
  skip_requesting_account_id  = false

  endpoints {
    glue = "http://localhost:4566"
    sts  = "http://localhost:4566"
  }
}
