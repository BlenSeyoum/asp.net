CREATE PROCEDURE stdpInsert   

	@studID nvarchar(20) ,
	@firstname nvarchar(20) ,
	@fathername nvarchar(20) ,
	@grandfathername nvarchar(20) ,
	@dateofBirth Datetime ,
	@createdDate Datetime ,
	@gender nchar(10) 
 As 
INSERT INTO tblStudent (studID,firstname,fathername,grandfathername,dateofBirth,createdDate,gender) 
values(@studID,@firstname,@fathername,@grandfathername,@dateofBirth,@createdDate,@gender)
 Go 