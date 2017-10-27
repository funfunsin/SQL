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


Create table [order]
(
	[order_ID] Char(10) NOT NULL,
	[data] Datetime NOT NULL,
Primary Key ([order_ID])
) 
go

Create table [product]
(
	[product_ID] Char(6) NOT NULL,
	[Name] Nvarchar(50) NOT NULL,
Primary Key ([product_ID])
) 
go

Create table [detail]
(
	[Quantity] Integer NOT NULL,
	[order_ID] Char(10) NOT NULL,
	[product_ID] Char(6) NOT NULL,
Primary Key ([order_ID],[product_ID])
) 
go


Alter table [detail] add  foreign key([order_ID]) references [order] ([order_ID])  on update no action on delete no action 
go
Alter table [detail] add  foreign key([product_ID]) references [product] ([product_ID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


