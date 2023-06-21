#Resource to create dynamodb table

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "myworkshop-terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}