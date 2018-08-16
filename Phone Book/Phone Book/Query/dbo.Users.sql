CREATE TABLE [dbo].[Users]
(
	[UsersId] INT NOT NULL PRIMARY KEY, 
    [name] NCHAR(30) NULL, 
    [surname] NCHAR(30) NULL, 
    [address] NCHAR(50) NULL, 
    [phone] INT NULL, 
    [email] NCHAR(50) NULL
)
