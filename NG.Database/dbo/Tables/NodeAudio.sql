CREATE TABLE [dbo].[NodeAudio] (
    [nodeId]  UNIQUEIDENTIFIER NOT NULL,
    [audioId] UNIQUEIDENTIFIER NOT NULL,
    [order]   INT              NULL,
    CONSTRAINT [PK_NodeAudio] PRIMARY KEY CLUSTERED ([nodeId] ASC, [audioId] ASC),
    CONSTRAINT [FK_NodeAudio_Audio] FOREIGN KEY ([audioId]) REFERENCES [dbo].[Audio] ([id]),
    CONSTRAINT [FK_NodeAudio_Node] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[Node] ([id]),
    CONSTRAINT [UK_NodeAudio_Order] UNIQUE NONCLUSTERED ([nodeId] ASC, [order] ASC)
);

