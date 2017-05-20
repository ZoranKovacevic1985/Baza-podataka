CREATE TABLE [dbo].[Person] (
    [IDPerson]  INT            NOT NULL,
    [FirstName] NVARCHAR (100) NOT NULL,
    [Surname]   NVARCHAR (100) NOT NULL,
    [Age]       INT            NULL,
    [gender]    NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([IDPerson] ASC)
);

