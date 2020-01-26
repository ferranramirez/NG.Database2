CREATE TABLE [dbo].[VisitedNode] (
    [userMail] VARCHAR (254)    NOT NULL,
    [tourId]   UNIQUEIDENTIFIER NOT NULL,
    [nodeId]   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_VisitedNode] PRIMARY KEY CLUSTERED ([userMail] ASC, [tourId] ASC, [nodeId] ASC),
    CONSTRAINT [FK_VisitedNode_Node] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[Node] ([id]),
    CONSTRAINT [FK_VisitedNode_UserTour] FOREIGN KEY ([userMail], [tourId]) REFERENCES [dbo].[UserTour] ([userMail], [tourId])
);

