CREATE TABLE [dbo].[Image] (
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [name]         VARCHAR (20)     NOT NULL,
    [dateUpload]   DATETIME         NOT NULL,
    [description]  TEXT             NULL,
    [photographer] VARCHAR (50)     NULL,
    CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED ([id] ASC)
);

