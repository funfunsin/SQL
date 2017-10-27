/*
Created		2017/10/3
Modified		2017/10/3
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/


Create table [student]
(
	[stu_ID] Char(10) NOT NULL,
	[Name] Nvarchar(20) NOT NULL,
	[tel] Varchar(20) NOT NULL,
	[addr] Nvarchar(100) NOT NULL,
	[birthday] Datetime NULL,
Primary Key ([stu_ID])
) 
go

Create table [class]
(
	[class_ID] Char(6) NOT NULL,
	[Name] Nvarchar(30) NOT NULL,
	[Credits] Integer Default 3 NOT NULL,
Primary Key ([class_ID])
) 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


