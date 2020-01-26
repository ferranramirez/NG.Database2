CREATE TABLE [dbo].[AudioImage] (
    [audioId] UNIQUEIDENTIFIER NOT NULL,
    [imageId] UNIQUEIDENTIFIER NOT NULL,
    [startAt] TIME (0)         NOT NULL,
    [endAt]   TIME (0)         NOT NULL,
    CONSTRAINT [PK_audioImage] PRIMARY KEY CLUSTERED ([audioId] ASC, [imageId] ASC),
    CONSTRAINT [FK_audioImage_Audio] FOREIGN KEY ([audioId]) REFERENCES [dbo].[Audio] ([id]),
    CONSTRAINT [FK_audioImage_Image] FOREIGN KEY ([imageId]) REFERENCES [dbo].[Image] ([id])
);

