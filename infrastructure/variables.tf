#Neste arquivo serão declaradas e definidas as variaves para utilização no arquivo 'main.tf'

variable "base_bucket_name" {
  default = "datalake-tf"
}

variable "environment" {
  default = "rais"
}

variable "account_number" {
  default = "703165468389"
}

variable "region" {
  default = "us-east-1"
}