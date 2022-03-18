#Ingestão de um arquivo no bucket criado anteriormente utilizando codigo
resource "aws_s3_bucket_object" "job_etl" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/01_job_spark_etl.py"
  acl    = "private"
  source = "../etl/01_job_spark_etl.py"
  etag   = filemd5("../etl/01_job_spark_etl.py")
}