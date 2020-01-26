CREATE TABLE [dbo].[Restaurant] (
    [nodeId]     UNIQUEIDENTIFIER NOT NULL,
    [menuOption] NCHAR (20)       CONSTRAINT [DF_Restaurant_menuOption] DEFAULT (N'standard') NOT NULL,
    CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED ([nodeId] ASC),
    CONSTRAINT [FK_Restaurant_Node] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[Node] ([id])
);

