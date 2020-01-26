CREATE TABLE [dbo].[TourNode] (
    [tourId] UNIQUEIDENTIFIER NOT NULL,
    [nodeId] UNIQUEIDENTIFIER NOT NULL,
    [order]  INT              NOT NULL,
    CONSTRAINT [PK_TourNode] PRIMARY KEY CLUSTERED ([tourId] ASC, [nodeId] ASC),
    CONSTRAINT [FK_TourNode_Node] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[Node] ([id]),
    CONSTRAINT [FK_TourNode_Tour] FOREIGN KEY ([tourId]) REFERENCES [dbo].[Tour] ([id]),
    CONSTRAINT [UK_TourNode_Order] UNIQUE NONCLUSTERED ([tourId] ASC, [order] ASC)
);

