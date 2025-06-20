SHOW Stages;

CREATE OR REPLACE STAGE AWS_S3_EXT_2
FILE_FORMAT=AWS_S3_FILEFORMAT
URL='s3://sfquickstarts/tastybytes/';

list @AWS_S3_EXT_2;

SELECT $1,$2,$3,$4,$5 from @AWS_S3_EXT_2 LIMIT 1000;

SELECT count(*) FROM @AWS_S3_EXT_2;

Create EXTERNAL TABLE tastybytes_Ext_Table
with location = @AWS_S3_EXT_2
file_format = (type = csv skip_header = 1);








