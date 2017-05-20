-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FriendsOfFriends]
	
	@IDPerson int

AS
BEGIN

	SET NOCOUNT ON;

SELECT DISTINCT u.IDPerson,p.FirstName,p.Surname FROM friends AS u 
inner join Person as p on p.IDPerson=u.IDPerson
INNER JOIN ( SELECT g.IDFriend FROM friends AS g WHERE g.IDPerson = @IDPerson ) AS f ON 
(u.IDFriend=f.IDFriend AND u.IDPerson <> @IDPerson)
WHERE U.IDPerson NOT IN (Select Friends.IDPerson from Friends
inner join Person on Person.IDPerson=Friends.IDPerson
where Friends.IDFriend= @IDperson)


END
