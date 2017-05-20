CREATE TABLE [dbo].[Friends] (
    [IDPerson] INT NOT NULL,
    [IDFriend] INT NOT NULL,
    CONSTRAINT [FK_Friends_Person] FOREIGN KEY ([IDPerson]) REFERENCES [dbo].[Person] ([IDPerson]),
    CONSTRAINT [FK_Friends_Person1] FOREIGN KEY ([IDFriend]) REFERENCES [dbo].[Person] ([IDPerson])
);

