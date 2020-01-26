CREATE TABLE [dbo].[Node] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [name]        VARCHAR (30)     NOT NULL,
    [description] TEXT             NULL,
    [latitude]    DECIMAL (9, 6)   NOT NULL,
    [longitude]   DECIMAL (9, 6)   NOT NULL,
    CONSTRAINT [PK_Node] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [UK_Node] UNIQUE NONCLUSTERED ([latitude] ASC, [longitude] ASC, [name] ASC)
);

