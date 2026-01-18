USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'data_cleaning_project')
BEGIN
ALTER DATABASE data_cleaning_project SET 
SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE data_cleaning_project
END;
GO

CREATE DATABASE data_cleaning_project;
GO
USE data_cleaning_project;
GO

IF OBJECT_ID ('customer_order', 'U') IS NOT NULL
DROP TABLE customer_order;
GO

CREATE TABLE customer_order (
							order_id INT,
							customer_name VARCHAR (50),
							email VARCHAR (30),
							order_date VARCHAR (20),
							product_name VARCHAR (20),
							quantity VARCHAR (5),
							price VARCHAR (10),
							country VARCHAR (20),
							order_status VARCHAR (20),
							notes VARCHAR (MAX)
							);
GO

TRUNCATE TABLE customer_order;
GO

BULK INSERT customer_order
FROM 'D:\Excel Power BI\SQL Practice\customer_orders.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDQUOTE = '"',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0D0a');
GO						


					
