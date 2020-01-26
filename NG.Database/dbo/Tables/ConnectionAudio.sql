CREATE TABLE [dbo].[ConnectionAudio] (
    [fromNodeId] UNIQUEIDENTIFIER NOT NULL,
    [toNodeId]   UNIQUEIDENTIFIER NOT NULL,
    [audioId]    UNIQUEIDENTIFIER NOT NULL,
    [order]      INT              NULL,
    CONSTRAINT [PK_ConnectionAudio] PRIMARY KEY CLUSTERED ([fromNodeId] ASC, [toNodeId] ASC, [audioId] ASC),
    CONSTRAINT [FK_ConnectionAudio_Audio] FOREIGN KEY ([audioId]) REFERENCES [dbo].[Audio] ([id]),
    CONSTRAINT [FK_ConnectionAudio_Connection] FOREIGN KEY ([fromNodeId], [toNodeId]) REFERENCES [dbo].[Connection] ([fromNodeId], [toNodeId]),
    CONSTRAINT [UK_ConnectionAudio_Order] UNIQUE NONCLUSTERED ([audioId] ASC, [order] ASC)
);

