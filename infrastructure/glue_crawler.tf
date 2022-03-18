resource "aws_glue_catalog_database" "datalake_rais" {
  name = "datalake_rais"
}

resource "aws_glue_crawler" "datalake_rais" {
  database_name = aws_glue_catalog_database.datalake_rais.name
  name          = "rais_s3_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://datalake-tf-703165468389-rais/consumer-zone/rais/"
  }

  configuration = <<EOF
{
   "Version": 1.0,
   "Grouping": {
      "TableGroupingPolicy": "CombineCompatibleSchemas" }
}
EOF
}