CREATE TABLE [dbo].[Connection] (
    [fromNodeId] UNIQUEIDENTIFIER NOT NULL,
    [toNodeId]   UNIQUEIDENTIFIER NOT NULL,
    [time]       TIME (0)         NULL,
    CONSTRAINT [PK_Connection] PRIMARY KEY CLUSTERED ([fromNodeId] ASC, [toNodeId] ASC),
    CONSTRAINT [FK_Connection_FromNode] FOREIGN KEY ([fromNodeId]) REFERENCES [dbo].[Node] ([id]),
    CONSTRAINT [FK_Connection_ToNode] FOREIGN KEY ([toNodeId]) REFERENCES [dbo].[Node] ([id])
);

