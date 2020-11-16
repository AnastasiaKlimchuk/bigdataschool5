CREATE LOGIN [an_klimchuk] with PASSWORD=N'****'
GO
CREATE USER [UserKlimchuk] FOR LOGIN [an_klimchuk] WITH DEFAULT_SCHEMA=[klim_shema]
GO
EXEC sp_addrolemember N'db_owner', N'an_klimchuk'
GO
