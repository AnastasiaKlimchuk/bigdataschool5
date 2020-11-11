
CREATE DATABASE SCOPED CREDENTIAL MyklimchukBlob
WITH
  IDENTITY = 'SHARED ACCESS SIGNATURE',
  SECRET = 'ke7McvDIlIHdBlL58MHaL352qWZlWpm7aaDvzceSjX1d1tfpFGtfqv+32wTEMjxEIU/vpguzWZZqgGiY+zjikQ==' ;
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
