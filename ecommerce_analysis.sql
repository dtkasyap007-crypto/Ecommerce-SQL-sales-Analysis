Created Ecommerce_Sales Project

Create Database Ecommerce_Project;
Use Ecommerce_Project;
Create Table Customers(Customer_Id Int Primary key, Customer_Name varchar (50));
Insert into Customers values 
(1,'Amit Sharma'),
(2,'Priya Singh'),
(3,'Rahul Verma'),
(4,'Neha Gupta'),
(5,'Arjun Mehta'),
(6,'Kavya Patel'),
(7,'Rohan Kapoor'),
(8,'Simran Kaur');
Create table Products(Product_Id Int Primary key, Product_Name varchar(50));
Insert into Products values 
(101,'Laptop'),
(102,'Mobile'),
(103,'Headphone'),
(104,'Smart Watch'),
(105,'Keyboard'),
(106,'Mouse'),
(107,'Tablet'),
(108,'Printer');
Create table Orders(Order_Id Int Primary key,Customer_Id Int, Product_Id Int,Quantity Int,Price Decimal(10,2),
Foreign key (Customer_Id)  References Customers(Customer_Id), 
Foreign Key (Product_Id)  References Products(Product_Id) );
Insert into Orders values
(1001, 1, 101, 1, 60000),
(1002, 2, 102, 2, 20000),
(1003, 1, 103, 3, 2000),
(1004, 3, 104, 1, 10000),
(1005, 4, 101, 1, 60000),
(1006, 2, 105, 2, 1500),
(1007, 5, 102, 1, 20000),
(1008, 1, 106, 2, 800),
(1009, 6, 103, 2, 2000),
(1010, 7, 104, 1, 10000),
(1011, 4, 102, 3, 20000),
(1012, 8, 105, 1, 1500);
Select *from Orders;
Select *from Customers;
Select *from Products;
Select c.Customer_Name,SUM(o.Quantity* o.Price)
AS total_revenue
From customers c
Inner Join Orders o
ON c.Customer_ID = o.Customer_Id
Group by c.Customer_Name
Order by total_revenue DESC
LIMIT 5;
Select p.Product_Id, p.Product_Name
from Products p
Left join orders o
ON P.Product_Id = o.Product_Id
where o.Product_Id is Null;
Select SUM(quantity*price) As total_revenue From Orders;



