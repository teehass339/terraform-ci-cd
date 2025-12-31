terraform {
    backend "s3" {
        bucket = "tf-state-cicd-portfolio"
        key = "dev/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt = true

    }
}