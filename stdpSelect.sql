CREATE PROCEDURE [dbo].[stdpSelect]   

	@studID nvarchar(20) 
	
 As 
SELECT * FROM tblStudent 
WHERE studID = @studID
Go