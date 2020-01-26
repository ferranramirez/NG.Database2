CREATE TABLE [dbo].[NodeImage] (
    [nodeId]  UNIQUEIDENTIFIER NOT NULL,
    [imageId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_NodeImage] PRIMARY KEY CLUSTERED ([nodeId] ASC, [imageId] ASC),
    CONSTRAINT [FK_NodeImage_Image] FOREIGN KEY ([imageId]) REFERENCES [dbo].[Image] ([id]),
    CONSTRAINT [FK_NodeImage_Node] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[Node] ([id])
);

