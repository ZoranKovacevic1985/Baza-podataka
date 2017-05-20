-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sel_FriendsOfPerson]

@IDperson int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	Select Friends.IDPerson, Person.FirstName,Person.Surname from Friends
inner join Person on Person.IDPerson=Friends.IDPerson
where Friends.IDFriend= @IDperson
order by Person.FirstName asc


END
