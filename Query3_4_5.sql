
CREATE DATABASE SCOPED CREDENTIAL MyklimchukBlob
WITH
  IDENTITY = 'SHARED ACCESS SIGNATURE',
  SECRET = '****' ;
GO
DROP EXTERNAL DATA SOURCE KlimchukStorage
GO
CREATE EXTERNAL DATA SOURCE KlimchukStorage
WITH
  ( LOCATION = 'wasbs://klimchuk@container01.blob.core.windows.net' ,
    CREDENTIAL = MyklimchukBlob ,
    TYPE = HADOOP
  ) ;
GO
