/*
Created		2017/9/27
Modified		2017/9/27
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/

create database HW
go

use HW
go


Create table [Student]
(
	[Stu_ID] Char(4) NOT NULL,
	[Name] Char(20) NOT NULL,
	[gender] Bit NOT NULL,
	[Birthday] Datetime NULL,
	[tel] Varchar(15) NOT NULL,
Primary Key ([Stu_ID])
) 
go

Create table [Address]
(
	[Addr] Nvarchar(50) NOT NULL,
	[Stu_ID] Char(4) NOT NULL,
Primary Key ([Addr],[Stu_ID])
) 
go

Create table [Courses]
(
	[Course_ID] Char(5) NOT NULL,
	[Name] Nvarchar(20) NOT NULL,
	[credit] Integer Default 3 NOT NULL,
Primary Key ([Course_ID])
) 
go

Create table [Class]
(
	[Stu_ID] Char(4) NOT NULL,
	[Teacher_ID] Char(4) NOT NULL,
	[Course_ID] Char(5) NOT NULL,
	[classroom] Varchar(8) NOT NULL,
	[classtimes] Datetime NOT NULL,
Primary Key ([Stu_ID],[Teacher_ID],[Course_ID])
) 
go

Create table [Teacher]
(
	[Teacher_ID] Char(4) NOT NULL,
	[dept] Varchar(5) NOT NULL,
	[jobTitle] Nvarchar(8) NOT NULL,
	[Person_ID] Char(10) NOT NULL,
Primary Key ([Teacher_ID])
) 
go

Create table [Employee]
(
	[Person_ID] Char(10) NOT NULL,
	[Name] Varchar(20) NOT NULL,
	[tel] Varchar(15) NULL,
	[city] Nvarchar(5) NOT NULL,
	[street] Nvarchar(30) NOT NULL,
	[salary] Money NOT NULL,
	[tax] Money NULL,
	[insurance] Money NULL,
Primary Key ([Person_ID])
) 
go

Create table [Parents]
(
	[Name] Nvarchar(20) NOT NULL,
	[relationship] Nvarchar(2) NOT NULL,
	[Stu_ID] Char(4) NOT NULL,
Primary Key ([Name],[Stu_ID])
) 
go

Create table [Exam]
(
	[Exam_ID] Char(4) NOT NULL,
	[Course_ID] Char(5) NOT NULL,
	[Name] Nvarchar(25) NOT NULL,
	[ºØÃþ] Nvarchar(10) NOT NULL,
Primary Key ([Exam_ID])
) 
go

Create table [Result]
(
	[Stu_ID] Char(4) NOT NULL,
	[Exam_ID] Char(4) NOT NULL,
	[examDate] Datetime NOT NULL,
	[score] Integer NOT NULL,
Primary Key ([Stu_ID],[Exam_ID])
) 
go


Alter table [Address] add  foreign key([Stu_ID]) references [Student] ([Stu_ID])  on update no action on delete no action 
go
Alter table [Class] add  foreign key([Stu_ID]) references [Student] ([Stu_ID])  on update no action on delete no action 
go
Alter table [Parents] add  foreign key([Stu_ID]) references [Student] ([Stu_ID])  on update no action on delete no action 
go
Alter table [Result] add  foreign key([Stu_ID]) references [Student] ([Stu_ID])  on update no action on delete no action 
go
Alter table [Class] add  foreign key([Course_ID]) references [Courses] ([Course_ID])  on update no action on delete no action 
go
Alter table [Exam] add  foreign key([Course_ID]) references [Courses] ([Course_ID])  on update no action on delete no action 
go
Alter table [Class] add  foreign key([Teacher_ID]) references [Teacher] ([Teacher_ID])  on update no action on delete no action 
go
Alter table [Teacher] add  foreign key([Person_ID]) references [Employee] ([Person_ID])  on update no action on delete no action 
go
Alter table [Result] add  foreign key([Exam_ID]) references [Exam] ([Exam_ID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


