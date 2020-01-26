CREATE TABLE [dbo].[UserTour] (
    [userMail]     VARCHAR (254)    NOT NULL,
    [tourId]       UNIQUEIDENTIFIER NOT NULL,
    [purchaseDate] DATETIME         NOT NULL,
    [completed]    INT              CONSTRAINT [DF_UserTour_completed] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_UserTour] PRIMARY KEY CLUSTERED ([userMail] ASC, [tourId] ASC),
    CONSTRAINT [FK_UserTour_Tour] FOREIGN KEY ([tourId]) REFERENCES [dbo].[Tour] ([id]),
    CONSTRAINT [FK_UserTour_User_mail] FOREIGN KEY ([userMail]) REFERENCES [dbo].[User] ([email])
);

