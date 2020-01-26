CREATE TABLE [dbo].[Tour] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [name]        VARCHAR (50)     NOT NULL,
    [description] TEXT             NULL,
    [imageId]     UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Tour_Image] FOREIGN KEY ([imageId]) REFERENCES [dbo].[Image] ([id])
);

