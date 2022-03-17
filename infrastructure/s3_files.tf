#Ingestão de um arquivo no bucket criado anteriormente utilizando codigo
# resource "aws_s3_bucket_object" "rais_CO" {
#   bucket = aws_s3_bucket.datalake.id
#   key    = "raw-data/rais/RAIS_VINC_PUB_CENTRO_OESTE.txt"
#   acl    = "private"
#   source = "../data/RAIS_VINC_PUB_CENTRO_OESTE.txt"
#   etag   = filemd5("../data/RAIS_VINC_PUB_CENTRO_OESTE.txt")
# }

# resource "aws_s3_bucket_object" "rais_MG_ES_RJ" {
#   bucket = aws_s3_bucket.datalake.id
#   key    = "raw-data/rais/RAIS_VINC_PUB_MG_ES_RJ.txt"
#   acl    = "private"
#   source = "../data/RAIS_VINC_PUB_MG_ES_RJ.txt"
#   etag   = filemd5("../data/RAIS_VINC_PUB_MG_ES_RJ.txt")
# }

# resource "aws_s3_bucket_object" "rais_NORDESTE" {
#   bucket = aws_s3_bucket.datalake.id
#   key    = "raw-data/rais/RAIS_VINC_PUB_NORDESTE.txt"
#   acl    = "private"
#   source = "../data/RAIS_VINC_PUB_NORDESTE.txt"
#   etag   = filemd5("../data/RAIS_VINC_PUB_NORDESTE.txt")
# }

resource "aws_s3_bucket_object" "rais_NORTE" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/rais/RAIS_VINC_PUB_NORTE.txt"
  acl    = "private"
  source = "../data/RAIS_VINC_PUB_NORTE.txt"
  etag   = filemd5("../data/RAIS_VINC_PUB_NORTE.txt")
}

# resource "aws_s3_bucket_object" "rais_SP" {
#   bucket = aws_s3_bucket.datalake.id
#   key    = "raw-data/rais/RAIS_VINC_PUB_SP.txt"
#   acl    = "private"
#   source = "../data/RAIS_VINC_PUB_SP.txt"
#   etag   = filemd5("../data/RAIS_VINC_PUB_SP.txt")
# }