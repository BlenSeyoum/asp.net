CREATE PROCEDURE stdpUpdates
	@studID nvarchar(20) ,
	@firstname nvarchar(20) ,
	@fathername nvarchar(20) ,
	@grandfathername nvarchar(20) ,
	@dateofBirth Datetime ,
	@createdDate Datetime ,
	@gender nchar(10) 
 As 
UPDATE tblStudent  SET  firstname = @firstname,fathername = @fathername, grandfathername = @grandfathername , 
dateofBirth = @dateofBirth,createdDate = @createdDate,gender = @gender  
WHERE  studID = @studID 
 Go 