CREATE TABLE [dbo].[Audio] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [name]        VARCHAR (50)     NOT NULL,
    [description] TEXT             NULL,
    CONSTRAINT [PK_Audio] PRIMARY KEY CLUSTERED ([id] ASC)
);

