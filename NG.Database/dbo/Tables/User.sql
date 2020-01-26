CREATE TABLE [dbo].[User] (
    [email]     VARCHAR (254) NOT NULL,
    [name]      VARCHAR (50)  NOT NULL,
    [surname]   VARCHAR (70)  NOT NULL,
    [birthdate] DATE          NOT NULL,
    [password]  VARCHAR (40)  NOT NULL,
    [role]      VARCHAR (10)  CONSTRAINT [DF_User_role] DEFAULT (user_name()) NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([email] ASC)
);

