CREATE TABLE [dbo].[SP_Goods]
(
[GId] INT NOT NULL PRIMARY KEY, 
    [GName] VARCHAR(50) NULL, 
    [GPhoto1] VARCHAR(50) NULL, 
    [GPhoto2] VARCHAR(50) NULL, 
    [GPhoto3] VARCHAR(50) NULL, 
    [GPhoto4] VARCHAR(50) NULL, 
    [GNum] VARCHAR(50) NULL, 
    [GType] NVARCHAR(7) NULL, 
    [GPrice] FLOAT NULL, 
    [GStock] INT NULL, 
    [GIntro] NVARCHAR(100) NULL, 
    [GTime] DATE NULL, 
    [GPost] FLOAT NULL
)
