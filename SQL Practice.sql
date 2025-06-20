CREATE TABLE CUSTOMER_PROFILE(
       Customer_Ref_Number STRING,
       Email STRING,
       First_Name STRING,
       Surname STRING,
       Birth_Date STRING,
       Rewards_Program_ID STRING
);

SELECT * FROM CUSTOMER_PROFILE;

--s3://datacloudkishan/ecommerce-data /

COPY INTO CUSTOMER_PROFILE 
    FROM s3://datacloudkishan/ecommerce-data
    file_format  = (type=csv field_delimiter=',' skip_header=1);
